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

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,int) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

__attribute__((used)) static int FUNC5(const char *sym, const char * const pat[])
{
	const char *p;
	while (*pat) {
		p = *pat++;
		const char *endp = p + FUNC2(p) - 1;

		/* "*foo" */
		if (*p == '*') {
			if (FUNC4(sym, p + 1) == 0)
				return 1;
		}
		/* "foo*" */
		else if (*endp == '*') {
			if (FUNC3(sym, p, FUNC2(p) - 1) == 0)
				return 1;
		}
		/* "foo$" */
		else if (*endp == '$') {
			if (FUNC3(sym, p, FUNC2(p) - 1) == 0) {
				if (FUNC0(sym + FUNC2(p) - 1))
					return 1;
			}
		}
		/* no wildcards */
		else {
			if (FUNC1(p, sym) == 0)
				return 1;
		}
	}
	/* no match */
	return 0;
}