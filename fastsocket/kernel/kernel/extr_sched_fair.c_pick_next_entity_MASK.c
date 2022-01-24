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
struct cfs_rq {struct sched_entity* next; struct sched_entity* last; struct sched_entity* skip; } ;

/* Variables and functions */
 struct sched_entity* FUNC0 (struct cfs_rq*) ; 
 struct sched_entity* FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfs_rq*,struct sched_entity*) ; 
 int FUNC3 (struct sched_entity*,struct sched_entity*) ; 

__attribute__((used)) static struct sched_entity *FUNC4(struct cfs_rq *cfs_rq)
{
	struct sched_entity *se = FUNC0(cfs_rq);
	struct sched_entity *left = se;

	/*
	 * Avoid running the skip buddy, if running something else can
	 * be done without getting too unfair.
	 */
	if (cfs_rq->skip == se) {
		struct sched_entity *second = FUNC1(se);
		if (second && FUNC3(second, left) < 1)
			se = second;
	}

	/*
	 * Prefer last buddy, try to return the CPU to a preempted task.
	 */
	if (cfs_rq->last && FUNC3(cfs_rq->last, left) < 1)
		se = cfs_rq->last;

	/*
	 * Someone really wants this to run. If it's not unfair, run it.
	 */
	if (cfs_rq->next && FUNC3(cfs_rq->next, left) < 1)
		se = cfs_rq->next;

	FUNC2(cfs_rq, se);

	return se;
}