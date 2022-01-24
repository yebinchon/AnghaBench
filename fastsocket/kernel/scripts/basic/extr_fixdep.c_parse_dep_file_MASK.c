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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (char*,char) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* target ; 

__attribute__((used)) static void FUNC9(void *map, size_t len)
{
	char *m = map;
	char *end = m + len;
	char *p;
	char s[PATH_MAX];

	p = FUNC7(m, ':');
	if (!p) {
		FUNC3(stderr, "fixdep: parse error\n");
		FUNC2(1);
	}
	FUNC5(s, m, p-m); s[p-m] = 0;
	FUNC6("deps_%s := \\\n", target);
	m = p+1;

	FUNC0();

	while (m < end) {
		while (m < end && (*m == ' ' || *m == '\\' || *m == '\n'))
			m++;
		p = m;
		while (p < end && *p != ' ') p++;
		if (p == end) {
			do p--; while (!FUNC4(*p));
			p++;
		}
		FUNC5(s, m, p-m); s[p-m] = 0;
		if (FUNC8(s, "include/linux/autoconf.h") &&
		    FUNC8(s, "arch/um/include/uml-config.h") &&
		    FUNC8(s, ".ver")) {
			FUNC6("  %s \\\n", s);
			FUNC1(s);
		}
		m = p + 1;
	}
	FUNC6("\n%s: $(deps_%s)\n\n", target, target);
	FUNC6("$(deps_%s):\n", target);
}