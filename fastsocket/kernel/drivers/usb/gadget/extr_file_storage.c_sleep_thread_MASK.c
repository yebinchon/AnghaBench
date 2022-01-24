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
struct fsg_dev {scalar_t__ thread_wakeup_needed; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fsg_dev *fsg)
{
	int	rc = 0;

	/* Wait until a signal arrives or we are woken up */
	for (;;) {
		FUNC4();
		FUNC2(TASK_INTERRUPTIBLE);
		if (FUNC3(current)) {
			rc = -EINTR;
			break;
		}
		if (fsg->thread_wakeup_needed)
			break;
		FUNC1();
	}
	FUNC0(TASK_RUNNING);
	fsg->thread_wakeup_needed = 0;
	return rc;
}