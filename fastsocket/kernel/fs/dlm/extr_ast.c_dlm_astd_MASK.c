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
 int /*<<< orphan*/  WAKE_ASTS ; 
 int /*<<< orphan*/  astd_running ; 
 int /*<<< orphan*/  astd_wakeflags ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(void *data)
{
	while (!FUNC0()) {
		FUNC5(TASK_INTERRUPTIBLE);
		if (!FUNC7(WAKE_ASTS, &astd_wakeflags))
			FUNC4();
		FUNC5(TASK_RUNNING);

		FUNC1(&astd_running);
		if (FUNC6(WAKE_ASTS, &astd_wakeflags))
			FUNC3();
		FUNC2(&astd_running);
	}
	return 0;
}