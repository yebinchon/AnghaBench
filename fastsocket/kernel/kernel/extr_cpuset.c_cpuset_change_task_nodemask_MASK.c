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
struct task_struct {int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  mems_allowed_change_disable; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPOL_REBIND_STEP1 ; 
 int /*<<< orphan*/  MPOL_REBIND_STEP2 ; 
 int PF_EXITING ; 
 int /*<<< orphan*/  TIF_MEMDIE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(struct task_struct *tsk,
					nodemask_t *newmems)
{
repeat:
	/*
	 * Allow tasks that have access to memory reserves because they have
	 * been OOM killed to get memory anywhere.
	 */
	if (FUNC8(FUNC7(TIF_MEMDIE)))
		return;
	if (current->flags & PF_EXITING) /* Let dying task have memory */
		return;

	FUNC5(tsk);
	FUNC2(tsk->mems_allowed, tsk->mems_allowed, *newmems);
	FUNC1(tsk, newmems, MPOL_REBIND_STEP1);


	/*
	 * ensure checking ->mems_allowed_change_disable after setting all new
	 * allowed nodes.
	 *
	 * the read-side task can see an nodemask with new allowed nodes and
	 * old allowed nodes. and if it allocates page when cpuset clears newly
	 * disallowed ones continuous, it can see the new allowed bits.
	 *
	 * And if setting all new allowed nodes is after the checking, setting
	 * all new allowed nodes and clearing newly disallowed ones will be done
	 * continuous, and the read-side task may find no node to alloc page.
	 */
	FUNC3();

	/*
	 * Allocation of memory is very fast, we needn't sleep when waiting
	 * for the read-side.
	 */
	while (FUNC0(tsk->mems_allowed_change_disable)) {
		FUNC6(tsk);
		if (!FUNC4(tsk))
			FUNC9();
		goto repeat;
	}

	/*
	 * ensure checking ->mems_allowed_change_disable before clearing all new
	 * disallowed nodes.
	 *
	 * if clearing newly disallowed bits before the checking, the read-side
	 * task may find no node to alloc page.
	 */
	FUNC3();

	FUNC1(tsk, newmems, MPOL_REBIND_STEP2);
	tsk->mems_allowed = *newmems;
	FUNC6(tsk);
}