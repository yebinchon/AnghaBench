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
struct task_struct {unsigned long nvcsw; unsigned long nivcsw; int flags; unsigned long last_switch_count; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int PF_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ sysctl_hung_task_panic ; 
 int /*<<< orphan*/  sysctl_hung_task_warnings ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct task_struct *t, unsigned long timeout)
{
	unsigned long switch_count = t->nvcsw + t->nivcsw;

	/*
	 * Ensure the task is not frozen.
	 * Also, when a freshly created task is scheduled once, changes
	 * its state to TASK_UNINTERRUPTIBLE without having ever been
	 * switched out once, it musn't be checked.
	 */
	if (FUNC8(t->flags & PF_FROZEN || !switch_count))
		return;

	if (switch_count != t->last_switch_count) {
		t->last_switch_count = switch_count;
		return;
	}
	if (!sysctl_hung_task_warnings)
		return;
	sysctl_hung_task_warnings--;

	/*
	 * Ok, the task did not get scheduled for more than 2 minutes,
	 * complain:
	 */
	FUNC3("INFO: task %s:%d blocked for more than %ld seconds.\n",
		t->comm, t->pid, timeout);
	FUNC3("      %s %s %.*s\n",
		FUNC4(), FUNC1()->release,
		(int)FUNC6(FUNC1()->version, " "),
		FUNC1()->version);
	FUNC3("\"echo 0 > /proc/sys/kernel/hung_task_timeout_secs\""
		" disables this message.\n");
	FUNC5(t);
	FUNC0(t);

	FUNC7();

	if (sysctl_hung_task_panic)
		FUNC2("hung_task: blocked tasks");
}