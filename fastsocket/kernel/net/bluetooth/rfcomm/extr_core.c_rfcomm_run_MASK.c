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
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RFCOMM_SCHED_WAKEUP ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rfcomm_event ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void *unused)
{
	FUNC0("");

	FUNC8(current, -10);

	FUNC3(BDADDR_ANY);

	while (!FUNC2()) {
		FUNC7(TASK_INTERRUPTIBLE);
		if (!FUNC9(RFCOMM_SCHED_WAKEUP, &rfcomm_event)) {
			/* No pending events. Let's sleep.
			 * Incoming connections and data will wake us up. */
			FUNC6();
		}
		FUNC7(TASK_RUNNING);

		/* Process stuff */
		FUNC1(RFCOMM_SCHED_WAKEUP, &rfcomm_event);
		FUNC5();
	}

	FUNC4();

	return 0;
}