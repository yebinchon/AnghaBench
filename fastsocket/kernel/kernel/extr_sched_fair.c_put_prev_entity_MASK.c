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
struct sched_entity {scalar_t__ on_rq; } ;
struct cfs_rq {int /*<<< orphan*/ * curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*,struct sched_entity*) ; 

__attribute__((used)) static void FUNC5(struct cfs_rq *cfs_rq, struct sched_entity *prev)
{
	/*
	 * If still on the runqueue then deactivate_task()
	 * was not called and update_curr() has to be done:
	 */
	if (prev->on_rq)
		FUNC3(cfs_rq);

	/* throttle cfs_rqs exceeding runtime */
	FUNC1(cfs_rq);

	FUNC2(cfs_rq, prev);
	if (prev->on_rq) {
		FUNC4(cfs_rq, prev);
		/* Put 'current' back into the tree. */
		FUNC0(cfs_rq, prev);
	}
	cfs_rq->curr = NULL;
}