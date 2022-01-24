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
 int HZ ; 
 int SLEEP_TIME ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buffer ; 
 scalar_t__ consumer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ kill_test ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  read_start ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int FUNC12(void *arg)
{
	FUNC1(&read_start);

	while (!FUNC2() && !kill_test) {
		FUNC4(buffer);

		if (consumer) {
			FUNC7();
			FUNC11(consumer);
			FUNC9(&read_start);
		}

		FUNC3();

		FUNC8("Sleeping for 10 secs\n");
		FUNC6(TASK_INTERRUPTIBLE);
		FUNC5(HZ * SLEEP_TIME);
		FUNC0(TASK_RUNNING);
	}

	if (kill_test)
		FUNC10();

	return 0;
}