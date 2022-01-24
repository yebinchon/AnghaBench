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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static char *
FUNC6(const char *s, char *p, char *r)
{
	char *dest;
	int plen = FUNC4(p);

	FUNC0(dest);
	while (*s) {
		if (*s == *p && FUNC5(s, p, plen) == 0) {
			FUNC2(r, dest);
			s += plen;
			*p = '\0';	/* so no more matches */
		} else
			FUNC1(*s++, dest);
	}
	FUNC1('\0', dest);
	dest = FUNC3(dest);

	return (dest);
}