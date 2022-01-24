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
typedef  int /*<<< orphan*/  arith_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARITH_MAX ; 
 int /*<<< orphan*/  ARITH_MIN ; 
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

arith_t
FUNC3(const char *restrict nptr, char **restrict endptr)
{
	arith_t val;

	while (FUNC0((unsigned char)*nptr))
		nptr++;
	switch (*nptr) {
		case '-':
			return FUNC1(nptr, endptr, 0);
		case '0':
			return (arith_t)FUNC2(nptr, endptr, 0);
		default:
			val = (arith_t)FUNC2(nptr, endptr, 0);
			if (val >= 0)
				return val;
			else if (val == ARITH_MIN) {
				errno = ERANGE;
				return ARITH_MIN;
			} else {
				errno = ERANGE;
				return ARITH_MAX;
			}
	}
}