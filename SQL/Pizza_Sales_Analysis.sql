Use Pizza_DB;
-- A.KPI'S QUERY:
-- 1.Total Revenue:
-- SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
-- 2.Average Order Value:
-- SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS Average_Order_Value FROM pizza_sales; 
-- 3.Total Pizza Sold:
-- SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales; 
-- 4. Total Orders
-- SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;
-- 5. Average Pizzas Per Order:
-- SELECT CAST(CAST(SUM(Quantity) AS DECIMAL(10,2)) /CAST(COUNT(DISTINCT order_id)AS DECIMAL(10,2)) AS DECIMAL (10,2)) AS Average_Pizzas_Per_Orders FROM pizza_sales;

-- B.Daily Trend For Total Orders:
-- In MS SQL :
-- SELECT DATENAME(DW,order_id)AS Days,COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
-- GROUP BY DATENAME(DW,order_id);
-- In MYSQL:
-- SELECT DAYNAME(order_id)AS Days,COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
-- GROUP BY DAYNAME(order_id);

-- C.Hourly Trend For Total Orders:
-- SELECT HOUR(order_time) AS Order_Hours,COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales
-- GROUP BY HOUR(order_time)
-- ORDER BY Total_Orders DESC;

-- D.Percentage Of Sales By Pizza Category:
-- SELECT pizza_category,SUM(total_price) AS Total_Sales,ROUND(SUM(total_price)*100/(SELECT SUM(total_price) AS Total_Sales FROM pizza_sales),2) AS Percent_Of_Sales FROM pizza_sales
-- GROUP BY pizza_category;

-- E.PERCENTAGE OF SALES BY PIZZA SIZE:
-- SELECT pizza_size,SUM(total_price) AS Total_Sales,ROUND(SUM(total_price)*100/(SELECT SUM(total_price) FROM pizza_sales),2) AS Percent_Sales_By_Pizza_Size FROM pizza_sales
-- GROUP BY pizza_size;

-- F. Total Pizza Sold By Category:
-- SELECT pizza_category,SUM(total_price) AS Total_Sales FROM pizza_sales
-- GROUP BY pizza_category;

-- G. TOP 5 Best Sellers By Total Pizza Sold:
-- SELECT pizza_name,SUM(quantity) AS Total_Sold FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Sold DESC
-- LIMIT 5;

-- H. TOP 5 Worst Sellers By Total Pizza Sold:
-- SELECT pizza_name,SUM(quantity) AS Total_Sold FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Sold 
-- LIMIT 5;