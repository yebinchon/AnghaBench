#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct data {char* val; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 struct data FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  empty_data ; 
 char FUNC2 (char const*,int*) ; 
 char FUNC3 (char const*,int*) ; 
 scalar_t__ FUNC4 (char const*) ; 

struct data FUNC5(const char *s, int len)
{
	int i = 0;
	struct data d;
	char *q;

	d = FUNC1(empty_data, FUNC4(s)+1);

	q = d.val;
	while (i < len) {
		char c = s[i++];

		if (c != '\\') {
			q[d.len++] = c;
			continue;
		}

		c = s[i++];
		FUNC0(c);
		switch (c) {
		case 'a':
			q[d.len++] = '\a';
			break;
		case 'b':
			q[d.len++] = '\b';
			break;
		case 't':
			q[d.len++] = '\t';
			break;
		case 'n':
			q[d.len++] = '\n';
			break;
		case 'v':
			q[d.len++] = '\v';
			break;
		case 'f':
			q[d.len++] = '\f';
			break;
		case 'r':
			q[d.len++] = '\r';
			break;
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
			i--; /* need to re-read the first digit as
			      * part of the octal value */
			q[d.len++] = FUNC3(s, &i);
			break;
		case 'x':
			q[d.len++] = FUNC2(s, &i);
			break;
		default:
			q[d.len++] = c;
		}
	}

	q[d.len++] = '\0';
	return d;
}