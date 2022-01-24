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
struct TYPE_2__ {int on_rq; } ;
struct task_struct {int prio; void* static_prio; TYPE_1__ se; } ;
struct rq {int /*<<< orphan*/  curr; } ;

/* Variables and functions */
 void* FUNC0 (long) ; 
 long FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (struct task_struct*) ; 
 struct rq* FUNC8 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct rq*,unsigned long*) ; 
 scalar_t__ FUNC10 (struct rq*,struct task_struct*) ; 

void FUNC11(struct task_struct *p, long nice)
{
	int old_prio, delta, on_rq;
	unsigned long flags;
	struct rq *rq;

	if (FUNC1(p) == nice || nice < -20 || nice > 19)
		return;
	/*
	 * We have to be careful, if called from sys_setpriority(),
	 * the task might be in the middle of scheduling on another CPU.
	 */
	rq = FUNC8(p, &flags);
	/*
	 * The RT priorities are set via sched_setscheduler(), but we still
	 * allow the 'normal' nice value to be set - but as expected
	 * it wont have any effect on scheduling until the task is
	 * SCHED_FIFO/SCHED_RR:
	 */
	if (FUNC7(p)) {
		p->static_prio = FUNC0(nice);
		goto out_unlock;
	}
	on_rq = p->se.on_rq;
	if (on_rq)
		FUNC2(rq, p, 0);

	p->static_prio = FUNC0(nice);
	FUNC6(p);
	old_prio = p->prio;
	p->prio = FUNC3(p);
	delta = p->prio - old_prio;

	if (on_rq) {
		FUNC4(rq, p, 0);
		/*
		 * If the task increased its priority or is running and
		 * lowered its priority, then reschedule its CPU:
		 */
		if (delta < 0 || (delta > 0 && FUNC10(rq, p)))
			FUNC5(rq->curr);
	}
out_unlock:
	FUNC9(rq, &flags);
}