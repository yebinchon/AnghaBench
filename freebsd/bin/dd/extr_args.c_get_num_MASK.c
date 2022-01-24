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
typedef  int uintmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  oper ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uintmax_t
FUNC5(const char *val)
{
	uintmax_t num, mult, prevnum;
	char *expr;

	errno = 0;
	num = FUNC4(val, &expr, 0);
	if (expr == val)			/* No valid digits. */
		FUNC1(1, "%s: invalid numeric value", oper);
	if (errno != 0)
		FUNC0(1, "%s", oper);

	mult = FUNC2(*expr);

	if (mult != 0) {
		prevnum = num;
		num *= mult;
		/* Check for overflow. */
		if (num / mult != prevnum)
			goto erange;
		expr++;
	}

	switch (*expr) {
		case '\0':
			break;
		case '*':			/* Backward compatible. */
		case 'X':
		case 'x':
			mult = FUNC5(expr + 1);
			prevnum = num;
			num *= mult;
			if (num / mult == prevnum)
				break;
erange:
			FUNC1(1, "%s: %s", oper, FUNC3(ERANGE));
		default:
			FUNC1(1, "%s: illegal numeric value", oper);
	}
	return (num);
}