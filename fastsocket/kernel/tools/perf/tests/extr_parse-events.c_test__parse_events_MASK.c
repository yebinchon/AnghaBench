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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test__events ; 
 int /*<<< orphan*/  test__events_pmu ; 
 int /*<<< orphan*/  test__terms ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(void)
{
	int ret1, ret2 = 0;

#define TEST_EVENTS(tests)				\
do {							\
	ret1 = test_events(tests, ARRAY_SIZE(tests));	\
	if (!ret2)					\
		ret2 = ret1;				\
} while (0)

	TEST_EVENTS(test__events);

	if (FUNC2())
		TEST_EVENTS(test__events_pmu);

	if (FUNC2()) {
		int ret = FUNC3();
		if (ret)
			return ret;
	}

	ret1 = FUNC4(test__terms, FUNC0(test__terms));
	if (!ret2)
		ret2 = ret1;

	return ret2;
}