#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct pid_namespace {scalar_t__ reboot; } ;
struct TYPE_4__ {TYPE_1__* signal; } ;
struct TYPE_3__ {scalar_t__ group_exit_code; } ;

/* Variables and functions */
 int ECHILD ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  TIF_SIGPENDING ; 
 int /*<<< orphan*/  __WALL ; 
 int /*<<< orphan*/  FUNC0 (struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int FUNC4 (struct pid_namespace*,int) ; 
 struct task_struct* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 

void FUNC11(struct pid_namespace *pid_ns)
{
	int nr;
	int rc;
	struct task_struct *task;

	/*
	 * The last thread in the cgroup-init thread group is terminating.
	 * Find remaining pid_ts in the namespace, signal and wait for them
	 * to exit.
	 *
	 * Note:  This signals each threads in the namespace - even those that
	 * 	  belong to the same thread group, To avoid this, we would have
	 * 	  to walk the entire tasklist looking a processes in this
	 * 	  namespace, but that could be unnecessarily expensive if the
	 * 	  pid namespace has just a few processes. Or we need to
	 * 	  maintain a tasklist for each pid namespace.
	 *
	 */
	FUNC8(&tasklist_lock);
	nr = FUNC4(pid_ns, 1);
	while (nr > 0) {
		FUNC6();

		/*
		 * Use force_sig() since it clears SIGNAL_UNKILLABLE ensuring
		 * any nested-container's init processes don't ignore the
		 * signal
		 */
		task = FUNC5(FUNC2(nr), PIDTYPE_PID);
		if (task)
			FUNC3(SIGKILL, task);

		FUNC7();

		nr = FUNC4(pid_ns, nr);
	}
	FUNC9(&tasklist_lock);

	do {
		FUNC1(TIF_SIGPENDING);
		rc = FUNC10(-1, NULL, __WALL, NULL);
	} while (rc != -ECHILD);

	if (pid_ns->reboot)
		current->signal->group_exit_code = pid_ns->reboot;

	FUNC0(pid_ns);
	return;
}