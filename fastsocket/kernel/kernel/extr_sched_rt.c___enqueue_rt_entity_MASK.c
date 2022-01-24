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
struct rt_prio_array {int /*<<< orphan*/  bitmap; struct list_head* queue; } ;
struct rt_rq {int /*<<< orphan*/  rt_nr_running; struct rt_prio_array active; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct rt_rq* FUNC1 (struct sched_rt_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_rt_entity*,struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct rt_rq* FUNC6 (struct sched_rt_entity*) ; 
 scalar_t__ FUNC7 (struct rt_rq*) ; 
 int FUNC8 (struct sched_rt_entity*) ; 

__attribute__((used)) static void FUNC9(struct sched_rt_entity *rt_se, bool head)
{
	struct rt_rq *rt_rq = FUNC6(rt_se);
	struct rt_prio_array *array = &rt_rq->active;
	struct rt_rq *group_rq = FUNC1(rt_se);
	struct list_head *queue = array->queue + FUNC8(rt_se);

	/*
	 * Don't enqueue the group if its throttled, or when empty.
	 * The latter is a consequence of the former when a child group
	 * get throttled and the current group doesn't have any other
	 * active members.
	 */
	if (group_rq && (FUNC7(group_rq) || !group_rq->rt_nr_running))
		return;

	if (!rt_rq->rt_nr_running)
		FUNC4(rt_rq);

	if (head)
		FUNC3(&rt_se->run_list, queue);
	else
		FUNC5(&rt_se->run_list, queue);
	FUNC0(FUNC8(rt_se), array->bitmap);

	FUNC2(rt_se, rt_rq);
}