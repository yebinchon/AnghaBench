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
 scalar_t__ FUNC0 (char*) ; 
 int eval ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char **argv)
{
	char *p, **save, **t;
	int complained;

	complained = 0;
	for (t = argv; *t;) {
		if ((p = FUNC1(*t, '/')) != NULL)
			++p;
		else
			p = *t;
		if (FUNC0(p)) {
			if (!complained++)
				FUNC2("\".\" and \"..\" may not be removed");
			eval = 1;
			for (save = t; (t[0] = t[1]) != NULL; ++t)
				continue;
			t = save;
		} else
			++t;
	}
}