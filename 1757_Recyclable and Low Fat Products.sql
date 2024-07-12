Create table If Not Exists Products_43 (
product_id int, 
low_fats ENUM('Y', 'N'), 
recyclable ENUM('Y','N')
);

Truncate table Products_43;

insert into Products_43 (product_id, low_fats, recyclable) values ('0', 'Y', 'N');
insert into Products_43 (product_id, low_fats, recyclable) values ('1', 'Y', 'Y');
insert into Products_43 (product_id, low_fats, recyclable) values ('2', 'N', 'Y');
insert into Products_43 (product_id, low_fats, recyclable) values ('3', 'Y', 'Y');
insert into Products_43 (product_id, low_fats, recyclable) values ('4', 'N', 'N');

SELECT * FROM Products_43;

/*
Q. Write a solution to find the ids of products that are both low fat and recyclable.
Return the result table in any order.
The result format is in the following example.

Input: 
Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
Explanation: Only products 1 and 3 are both low fat and recyclable.
*/

SELECT product_id
FROM Products_43
WHERE low_fats = 'Y' AND recyclable = 'Y';
