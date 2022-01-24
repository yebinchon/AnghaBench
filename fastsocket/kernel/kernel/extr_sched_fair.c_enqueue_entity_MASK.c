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
struct sched_entity {int on_rq; int /*<<< orphan*/  vruntime; } ;
struct cfs_rq {int nr_running; struct sched_entity* curr; scalar_t__ min_vruntime; } ;

/* Variables and functions */
 int ENQUEUE_WAKEUP ; 
 int ENQUEUE_WAKING ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cfs_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfs_rq*,struct sched_entity*) ; 

__attribute__((used)) static void
FUNC11(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{
	/*
	 * Update the normalized vruntime before updating min_vruntime
	 * through callig update_curr().
	 */
	if (!(flags & ENQUEUE_WAKEUP) || (flags & ENQUEUE_WAKING))
		se->vruntime += cfs_rq->min_vruntime;

	/*
	 * Update run-time statistics of the 'current'.
	 */
	FUNC9(cfs_rq);
	FUNC7(cfs_rq, 0);
	FUNC1(cfs_rq, se);
	FUNC8(cfs_rq);

	if (flags & ENQUEUE_WAKEUP) {
		FUNC6(cfs_rq, se, 0);
		FUNC4(cfs_rq, se);
	}

	FUNC10(cfs_rq, se);
	FUNC3(cfs_rq, se);
	if (se != cfs_rq->curr)
		FUNC0(cfs_rq, se);
	se->on_rq = 1;

	if (cfs_rq->nr_running == 1) {
		FUNC5(cfs_rq);
		FUNC2(cfs_rq);
	}
}