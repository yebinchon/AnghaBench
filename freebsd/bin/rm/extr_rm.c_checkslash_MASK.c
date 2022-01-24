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
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(char **argv)
{
	char **t, **u;
	int complained;

	complained = 0;
	for (t = argv; *t;) {
		if (FUNC0(*t)) {
			if (!complained++)
				FUNC1("\"/\" may not be removed");
			eval = 1;
			for (u = t; u[0] != NULL; ++u)
				u[0] = u[1];
		} else {
			++t;
		}
	}
}