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
struct task_struct {int flags; TYPE_1__* sighand; TYPE_2__* signal; } ;
struct TYPE_4__ {int group_stop_count; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLD_STOPPED ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  SIGNAL_STOP_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int) ; 
 struct task_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct task_struct *tsk)
{
	int group_stop = 0;
	struct task_struct *t;

	if (FUNC9(tsk) || FUNC5(tsk->signal)) {
		tsk->flags |= PF_EXITING;
		return;
	}

	FUNC7(&tsk->sighand->siglock);
	/*
	 * From now this task is not visible for group-wide signals,
	 * see wants_signal(), do_signal_stop().
	 */
	tsk->flags |= PF_EXITING;
	if (!FUNC6(tsk))
		goto out;

	/* It could be that __group_complete_signal() choose us to
	 * notify about group-wide signal. Another thread should be
	 * woken now to take the signal since we will not.
	 */
	for (t = tsk; (t = FUNC1(t)) != tsk; )
		if (!FUNC6(t) && !(t->flags & PF_EXITING))
			FUNC4(t);

	if (FUNC11(tsk->signal->group_stop_count) &&
			!--tsk->signal->group_stop_count) {
		tsk->signal->flags = SIGNAL_STOP_STOPPED;
		group_stop = FUNC10(CLD_STOPPED, CLD_STOPPED);
	}
out:
	FUNC8(&tsk->sighand->siglock);

	if (FUNC11(group_stop)) {
		FUNC2(&tasklist_lock);
		FUNC0(tsk, group_stop);
		FUNC3(&tasklist_lock);
	}
}