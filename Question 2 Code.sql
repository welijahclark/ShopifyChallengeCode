
/********/
/*Part A*/
/********/

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS TotalOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE ShipperName = "Speedy Express"
GROUP BY ShipperName;

/*Speedy Express has 54 orders*/


/********/
/*Part B*/
/********/

SELECT Employees.LastName, COUNT(Orders.OrderID) AS TotalOrders FROM Orders
LEFT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY LastName
ORDER BY COUNT(Orders.OrderID) DESC;

/*Mx. Peacock has the most orders*/


/********/
/*Part C*/
/********/


SELECT Products.ProductName, SUM(OrderDetails.Quantity) AS TotalQuantity FROM Orders
INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
INNER JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
INNER JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE Customers.Country = 'Germany'
GROUP BY Products.ProductName 
ORDER BY SUM(OrderDetails.Quantity) DESC;

/*Boston Crab Meat*/