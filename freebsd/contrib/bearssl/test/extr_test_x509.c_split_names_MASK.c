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
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 void* FUNC3 (size_t) ; 

__attribute__((used)) static char **
FUNC4(const char *value)
{
	char **names;
	size_t len;

	names = NULL;
	len = FUNC2(value);
	for (;;) {
		size_t u, ptr;

		ptr = 0;
		u = 0;
		while (u < len) {
			size_t v;

			while (u < len && FUNC0(value[u])) {
				u ++;
			}
			v = u;
			while (v < len && !FUNC0(value[v])) {
				v ++;
			}
			if (v > u) {
				if (names != NULL) {
					char *name;

					name = FUNC3(v - u + 1);
					FUNC1(name, value + u, v - u);
					name[v - u] = 0;
					names[ptr] = name;
				}
				ptr ++;
			}
			u = v;
		}
		if (names == NULL) {
			names = FUNC3((ptr + 1) * sizeof *names);
		} else {
			names[ptr] = NULL;
			return names;
		}
	}
}