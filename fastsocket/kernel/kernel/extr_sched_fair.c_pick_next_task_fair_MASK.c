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
struct task_struct {int dummy; } ;
struct sched_entity {int dummy; } ;
struct cfs_rq {int /*<<< orphan*/  nr_running; } ;
struct rq {struct cfs_rq cfs; } ;

/* Variables and functions */
 struct cfs_rq* FUNC0 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct rq*,struct task_struct*) ; 
 struct sched_entity* FUNC2 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*,struct sched_entity*) ; 
 struct task_struct* FUNC4 (struct sched_entity*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct task_struct *FUNC6(struct rq *rq)
{
	struct task_struct *p;
	struct cfs_rq *cfs_rq = &rq->cfs;
	struct sched_entity *se;

	if (FUNC5(!cfs_rq->nr_running))
		return NULL;

	do {
		se = FUNC2(cfs_rq);
		FUNC3(cfs_rq, se);
		cfs_rq = FUNC0(se);
	} while (cfs_rq);

	p = FUNC4(se);
	FUNC1(rq, p);

	return p;
}