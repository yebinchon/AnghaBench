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
struct task_struct {int state; } ;
struct sched_entity {int /*<<< orphan*/  vruntime; scalar_t__ on_rq; int /*<<< orphan*/  block_start; int /*<<< orphan*/  sleep_start; } ;
struct cfs_rq {int /*<<< orphan*/  nr_running; scalar_t__ min_vruntime; struct sched_entity* curr; } ;
struct TYPE_2__ {int /*<<< orphan*/  clock; } ;

/* Variables and functions */
 int DEQUEUE_SLEEP ; 
 int TASK_INTERRUPTIBLE ; 
 int TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 
 scalar_t__ FUNC3 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*) ; 
 TYPE_1__* FUNC5 (struct cfs_rq*) ; 
 struct task_struct* FUNC6 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfs_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfs_rq*,struct sched_entity*) ; 

__attribute__((used)) static void
FUNC12(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{
	/*
	 * Update run-time statistics of the 'current'.
	 */
	FUNC9(cfs_rq);

	FUNC11(cfs_rq, se);
	if (flags & DEQUEUE_SLEEP) {
#ifdef CONFIG_SCHEDSTATS
		if (entity_is_task(se)) {
			struct task_struct *tsk = task_of(se);

			if (tsk->state & TASK_INTERRUPTIBLE)
				se->sleep_start = rq_of(cfs_rq)->clock;
			if (tsk->state & TASK_UNINTERRUPTIBLE)
				se->block_start = rq_of(cfs_rq)->clock;
		}
#endif
	}

	FUNC2(cfs_rq, se);

	if (se != cfs_rq->curr)
		FUNC0(cfs_rq, se);
	se->on_rq = 0;
	FUNC7(cfs_rq, 0);
	FUNC1(cfs_rq, se);

	/*
	 * Normalize the entity after updating the min_vruntime because the
	 * update can refer to the ->curr item and we need to reflect this
	 * movement in our normalized position.
	 */
	if (!(flags & DEQUEUE_SLEEP))
		se->vruntime -= cfs_rq->min_vruntime;

	FUNC10(cfs_rq);
	FUNC8(cfs_rq);

	/* return excess runtime on last dequeue */
	if (!cfs_rq->nr_running)
		FUNC4(cfs_rq);
}