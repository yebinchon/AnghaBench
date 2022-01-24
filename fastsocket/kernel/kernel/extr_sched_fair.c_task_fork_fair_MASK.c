#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sched_entity {int /*<<< orphan*/  vruntime; } ;
struct task_struct {struct sched_entity se; } ;
struct rq {int /*<<< orphan*/  lock; int /*<<< orphan*/  curr; } ;
struct cfs_rq {scalar_t__ min_vruntime; struct sched_entity* curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (struct sched_entity*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_sched_child_runs_first ; 
 struct cfs_rq* FUNC10 (int /*<<< orphan*/ ) ; 
 struct rq* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC13 (struct rq*) ; 

__attribute__((used)) static void FUNC14(struct task_struct *p)
{
	struct cfs_rq *cfs_rq;
	struct sched_entity *se = &p->se, *curr;
	int this_cpu = FUNC6();
	struct rq *rq = FUNC11();
	unsigned long flags;

	FUNC7(&rq->lock, flags);

	FUNC13(rq);

	cfs_rq = FUNC10(current);
	curr = cfs_rq->curr;

	/*
	 * Not only the cpu but also the task_group of the parent might have
	 * been changed after parent->se.parent,cfs_rq were copied to
	 * child->se.parent,cfs_rq. So call __set_task_cpu() to make those
	 * of child point to valid ones.
	 */
	FUNC3();
	FUNC0(p, this_cpu);
	FUNC4();

	FUNC12(cfs_rq);

	if (curr)
		se->vruntime = curr->vruntime;
	FUNC2(cfs_rq, se, 1);

	if (sysctl_sched_child_runs_first && curr && FUNC1(curr, se)) {
		/*
		 * Upon rescheduling, sched_class::put_prev_task() will place
		 * 'current' within the tree based on its new key value.
		 */
		FUNC9(curr->vruntime, se->vruntime);
		FUNC5(rq->curr);
	}

	se->vruntime -= cfs_rq->min_vruntime;

	FUNC8(&rq->lock, flags);
}