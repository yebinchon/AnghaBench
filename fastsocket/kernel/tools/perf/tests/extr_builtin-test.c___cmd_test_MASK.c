#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int (* func ) () ;int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COLOR_RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 TYPE_1__* tests ; 

__attribute__((used)) static int FUNC6(int argc, const char *argv[])
{
	int i = 0;
	int width = 0;

	while (tests[i].func) {
		int len = FUNC4(tests[i].desc);

		if (width < len)
			width = len;
		++i;
	}

	i = 0;
	while (tests[i].func) {
		int curr = i++, err;

		if (!FUNC1(curr, argc, argv))
			continue;

		FUNC3("%2d: %-*s:", i, width, tests[curr].desc);
		FUNC2("\n--- start ---\n");
		err = tests[curr].func();
		FUNC2("---- end ----\n%s:", tests[curr].desc);
		if (err)
			FUNC0(stderr, PERF_COLOR_RED, " FAILED!\n");
		else
			FUNC3(" Ok\n");
	}

	return 0;
}