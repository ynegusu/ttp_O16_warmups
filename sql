-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)
SELECT * FROM customer
WHERE first_name LIKE '%dan';

-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan) 
SELECT * 
FROM customer
WHERE last_name LIKE '%dan%';

-- now add the results of the first query to the results of the second (UNION)
SELECT * FROM customer
WHERE first_name LIKE '%dan'
union 
select * 
from customer 
where last_name LIKE '%dan';


-- find customers exist in both queries
-- hint: there's one
SELECT * 
FROM customer
WHERE first_name LIKE '%dan%'


-- find all film with 'Fred' in the title
SELECT * 
FROM film
WHERE title LIKE '%Fred%'


--find all films that mention squirrels in the description
SELECT * FROM film
WHERE description LIKE 'squirrels'


--find the intersection of the two previous subqueries

              
SELECT *
  FROM film
 WHERE description LIKE '%squirrels%' and title LIKE '%fred%';
              

-- hint: there's two