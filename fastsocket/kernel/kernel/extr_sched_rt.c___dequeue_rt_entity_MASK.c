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
struct sched_rt_entity {int /*<<< orphan*/  run_list; } ;
struct rt_prio_array {int /*<<< orphan*/  bitmap; scalar_t__ queue; } ;
struct rt_rq {int /*<<< orphan*/  rt_nr_running; struct rt_prio_array active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_rt_entity*,struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_rq*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct rt_rq* FUNC5 (struct sched_rt_entity*) ; 
 scalar_t__ FUNC6 (struct sched_rt_entity*) ; 

__attribute__((used)) static void FUNC7(struct sched_rt_entity *rt_se)
{
	struct rt_rq *rt_rq = FUNC5(rt_se);
	struct rt_prio_array *array = &rt_rq->active;

	FUNC2(&rt_se->run_list);
	if (FUNC4(array->queue + FUNC6(rt_se)))
		FUNC0(FUNC6(rt_se), array->bitmap);

	FUNC1(rt_se, rt_rq);
	if (!rt_rq->rt_nr_running)
		FUNC3(rt_rq);
}