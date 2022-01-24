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
struct sched_entity {scalar_t__ wait_start; scalar_t__ wait_sum; scalar_t__ wait_count; scalar_t__ wait_max; } ;
struct cfs_rq {int dummy; } ;
struct TYPE_2__ {scalar_t__ clock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sched_entity*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC2 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	FUNC3(se->wait_max, FUNC1(se->wait_max,
			FUNC2(cfs_rq)->clock - se->wait_start));
	FUNC3(se->wait_count, se->wait_count + 1);
	FUNC3(se->wait_sum, se->wait_sum +
			FUNC2(cfs_rq)->clock - se->wait_start);
#ifdef CONFIG_SCHEDSTATS
	if (entity_is_task(se)) {
		trace_sched_stat_wait(task_of(se),
			rq_of(cfs_rq)->clock - se->wait_start);
	}
#endif
	FUNC3(se->wait_start, 0);
}