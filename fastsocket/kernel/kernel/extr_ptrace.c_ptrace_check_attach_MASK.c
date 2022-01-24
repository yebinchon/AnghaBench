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
struct task_struct {int ptrace; scalar_t__ parent; TYPE_1__* sighand; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int ESRCH ; 
 int PT_PTRACED ; 
 int /*<<< orphan*/  TASK_TRACED ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 
 scalar_t__ FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 

int FUNC7(struct task_struct *child, int kill)
{
	int ret = -ESRCH;

	/*
	 * We take the read lock around doing both checks to close a
	 * possible race where someone else was tracing our child and
	 * detached between these two checks.  After this locked check,
	 * we are sure that this is our traced child and that can only
	 * be changed by us so it's not changing right after this.
	 */
	FUNC0(&tasklist_lock);
	if ((child->ptrace & PT_PTRACED) && child->parent == current) {
		ret = 0;
		/*
		 * child->sighand can't be NULL, release_task()
		 * does ptrace_unlink() before __exit_signal().
		 */
		FUNC2(&child->sighand->siglock);
		if (FUNC4(child))
			child->state = TASK_TRACED;
		else if (!FUNC5(child) && !kill)
			ret = -ESRCH;
		FUNC3(&child->sighand->siglock);
	}
	FUNC1(&tasklist_lock);

	if (!ret && !kill)
		ret = FUNC6(child, TASK_TRACED) ? 0 : -ESRCH;

	/* All systems go.. */
	return ret;
}