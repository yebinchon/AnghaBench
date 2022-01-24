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
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct task_struct *tsk)
{
	unsigned long flags;

	FUNC1(&tsk->sighand->siglock, flags);
	if (!tsk->signal->stats)
		goto ret;

	/*
	 * Each accounting subsystem calls its functions here to
	 * accumalate its per-task stats for tsk, into the per-tgid structure
	 *
	 *	per-task-foo(tsk->signal->stats, tsk);
	 */
	FUNC0(tsk->signal->stats, tsk);
ret:
	FUNC2(&tsk->sighand->siglock, flags);
	return;
}