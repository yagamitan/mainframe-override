-- 1. Find the April 2048 forum post mentioning EmptyStack and dad (smart-money-44)

SELECT author
FROM forum_posts
WHERE date >= '2048-04-01'
  AND date < '2048-05-01'
  AND content ILIKE '%EmptyStack%'
  AND content ILIKE '%dad%';

-- 2. Find the first and last name of the forum post author (Brad Steele)

SELECT first_name, last_name FROM forum_accounts WHERE username = 'smart-money-44';

-- 3. Find all forum accounts with the same last name （3）

SELECT * FROM forum_accounts WHERE last_name = 'Steele';

-- 4. Find all EmptyStack employees with the same last name (2)

SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';

-- 5. Find the EmptyStack message concerning the taxi project （Deploy Project TAXI by end of week. We need this out ASAP）

SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';

-- 6. Find the credentials of the admin account (username,password:your-boss-99 | notagaincarter)

SELECT username, password FROM emptystack_accounts WHERE username = 'your-boss-99';

-- 7. Find the ID of the taxi project (DczE0v2b)

SELECT id FROM emptystack_projects WHERE code = 'TAXI';
