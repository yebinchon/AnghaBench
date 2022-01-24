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
struct TYPE_2__ {int /*<<< orphan*/  exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct sched_rt_entity {int dummy; } ;
struct rt_rq {int /*<<< orphan*/  rt_nr_running; } ;
struct rq {int /*<<< orphan*/  clock; int /*<<< orphan*/  idle; struct rt_rq rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rt_rq* FUNC1 (struct sched_rt_entity*) ; 
 struct sched_rt_entity* FUNC2 (struct rq*,struct rt_rq*) ; 
 scalar_t__ FUNC3 (struct rt_rq*) ; 
 struct task_struct* FUNC4 (struct sched_rt_entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct task_struct *FUNC7(struct rq *rq)
{
	struct sched_rt_entity *rt_se;
	struct task_struct *p;
	struct rt_rq *rt_rq;

	rt_rq = &rq->rt;

	if (FUNC6(!rt_rq->rt_nr_running))
		return NULL;

	if (FUNC3(rt_rq) && !FUNC5(rq->idle))
		return NULL;

	do {
		rt_se = FUNC2(rq, rt_rq);
		FUNC0(!rt_se);
		rt_rq = FUNC1(rt_se);
	} while (rt_rq);

	p = FUNC4(rt_se);
	p->se.exec_start = rq->clock;

	return p;
}