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
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ kill_test ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  read_start ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(void *arg)
{
	while (!FUNC2() && !kill_test) {
		FUNC1(&read_start);

		FUNC3();

		FUNC5(TASK_INTERRUPTIBLE);
		if (FUNC2() || kill_test)
			break;

		FUNC4();
		FUNC0(TASK_RUNNING);
	}
	FUNC0(TASK_RUNNING);

	if (kill_test)
		FUNC6();

	return 0;
}