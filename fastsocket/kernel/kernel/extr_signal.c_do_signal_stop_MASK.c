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
struct task_struct {int flags; int exit_code; TYPE_1__* sighand; struct signal_struct* signal; } ;
struct signal_struct {int group_stop_count; int flags; int group_exit_code; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int CLD_STOPPED ; 
 int PF_EXITING ; 
 int SIGNAL_STOP_DEQUEUED ; 
 int SIGNAL_STOP_STOPPED ; 
 int /*<<< orphan*/  TASK_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct task_struct* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int,int) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(int signr)
{
	struct signal_struct *sig = current->signal;
	int notify;

	if (!sig->group_stop_count) {
		struct task_struct *t;

		if (!FUNC2(sig->flags & SIGNAL_STOP_DEQUEUED) ||
		    FUNC14(FUNC7(sig)))
			return 0;
		/*
		 * There is no group stop already in progress.
		 * We must initiate one now.
		 */
		sig->group_exit_code = signr;

		sig->group_stop_count = 1;
		for (t = FUNC3(current); t != current; t = FUNC3(t))
			/*
			 * Setting state to TASK_STOPPED for a group
			 * stop is always done with the siglock held,
			 * so this check has no races.
			 */
			if (!(t->flags & PF_EXITING) &&
			    !FUNC10(t)) {
				sig->group_stop_count++;
				FUNC8(t, 0);
			}
	}
	/*
	 * If there are no other threads in the group, or if there is
	 * a group stop in progress and we are the last to stop, report
	 * to the parent.  When ptraced, every thread reports itself.
	 */
	notify = sig->group_stop_count == 1 ? CLD_STOPPED : 0;
	notify = FUNC12(notify, CLD_STOPPED);
	/*
	 * tracehook_notify_jctl() can drop and reacquire siglock, so
	 * we keep ->group_stop_count != 0 before the call. If SIGCONT
	 * or SIGKILL comes in between ->group_stop_count == 0.
	 */
	if (sig->group_stop_count) {
		if (!--sig->group_stop_count)
			sig->flags = SIGNAL_STOP_STOPPED;
		current->exit_code = sig->group_exit_code;
		FUNC0(TASK_STOPPED);
	}
	FUNC9(&current->sighand->siglock);

	if (notify) {
		FUNC4(&tasklist_lock);
		FUNC1(current, notify);
		FUNC5(&tasklist_lock);
	}

	/* Now we don't run again until woken by SIGCONT or SIGKILL */
	do {
		FUNC6();
	} while (FUNC13());

	FUNC11();
	current->exit_code = 0;

	return 1;
}