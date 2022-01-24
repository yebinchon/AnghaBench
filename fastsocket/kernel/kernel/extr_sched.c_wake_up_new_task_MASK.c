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
struct task_struct {TYPE_1__* sched_class; int /*<<< orphan*/  state; } ;
struct rq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* task_woken ) (struct rq*,struct task_struct*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BALANCE_FORK ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_WAKING ; 
 int /*<<< orphan*/  WF_FORK ; 
 int /*<<< orphan*/  FUNC0 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct rq*,struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rq*,struct task_struct*) ; 
 struct rq* FUNC7 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct rq*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct rq*,struct task_struct*,int) ; 

void FUNC10(struct task_struct *p, unsigned long clone_flags)
{
	unsigned long flags;
	struct rq *rq;
	int cpu = FUNC2();

#ifdef CONFIG_SMP
	rq = task_rq_lock(p, &flags);
	p->state = TASK_WAKING;

	/*
	 * Fork balancing, do it here and not earlier because:
	 *  - cpus_allowed can change in the fork path
	 *  - any previously selected cpu might disappear through hotplug
	 *
	 * We set TASK_WAKING so that select_task_rq() can drop rq->lock
	 * without people poking at ->cpus_allowed.
	 */
	cpu = select_task_rq(rq, p, SD_BALANCE_FORK, 0);
	set_task_cpu(p, cpu);

	p->state = TASK_RUNNING;
	task_rq_unlock(rq, &flags);
#endif

	rq = FUNC7(p, &flags);
	FUNC0(rq, p, 0);
	FUNC9(rq, p, 1);
	FUNC1(rq, p, WF_FORK);
#ifdef CONFIG_SMP
	if (p->sched_class->task_woken)
		p->sched_class->task_woken(rq, p);
#endif
	FUNC8(rq, &flags);
	FUNC3();
}