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
typedef  scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct sched_entity {int /*<<< orphan*/  vruntime; scalar_t__ exec_start; } ;
struct cfs_rq {struct sched_entity* curr; } ;
struct TYPE_2__ {scalar_t__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,unsigned long) ; 
 scalar_t__ FUNC4 (struct sched_entity*) ; 
 TYPE_1__* FUNC5 (struct cfs_rq*) ; 
 struct task_struct* FUNC6 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct cfs_rq *cfs_rq)
{
	struct sched_entity *curr = cfs_rq->curr;
	u64 now = FUNC5(cfs_rq)->clock;
	unsigned long delta_exec;

	if (FUNC8(!curr))
		return;

	/*
	 * Get the amount of time the current task was running
	 * since the last time we changed load (this cannot
	 * overflow on 32 bits):
	 */
	delta_exec = (unsigned long)(now - curr->exec_start);
	if (!delta_exec)
		return;

	FUNC0(cfs_rq, curr, delta_exec);
	curr->exec_start = now;

	if (FUNC4(curr)) {
		struct task_struct *curtask = FUNC6(curr);

		FUNC7(curtask, delta_exec, curr->vruntime);
		FUNC3(curtask, delta_exec);
		FUNC2(curtask, delta_exec);
	}

	FUNC1(cfs_rq, delta_exec);
}