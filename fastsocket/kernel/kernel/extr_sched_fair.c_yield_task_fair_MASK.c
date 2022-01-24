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
struct sched_entity {int dummy; } ;
struct task_struct {scalar_t__ policy; struct sched_entity se; } ;
struct rq {int nr_running; struct task_struct* curr; } ;
struct cfs_rq {int dummy; } ;

/* Variables and functions */
 scalar_t__ SCHED_BATCH ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_entity*) ; 
 struct cfs_rq* FUNC2 (struct task_struct*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq*) ; 

__attribute__((used)) static void FUNC6(struct rq *rq)
{
	struct task_struct *curr = rq->curr;
	struct cfs_rq *cfs_rq = FUNC2(curr);
	struct sched_entity *se = &curr->se;

	/*
	 * Are we the only task in the tree?
	 */
	if (FUNC3(rq->nr_running == 1))
		return;

	FUNC0(cfs_rq, se);

	if (curr->policy != SCHED_BATCH) {
		FUNC5(rq);
		/*
		 * Update run-time statistics of the 'current'.
		 */
		FUNC4(cfs_rq);
	}

	FUNC1(se);
}