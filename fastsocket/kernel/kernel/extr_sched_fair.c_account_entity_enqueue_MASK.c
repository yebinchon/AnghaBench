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
struct TYPE_2__ {int /*<<< orphan*/  weight; } ;
struct sched_entity {int /*<<< orphan*/  group_node; TYPE_1__ load; } ;
struct cfs_rq {int /*<<< orphan*/  nr_running; int /*<<< orphan*/  tasks; int /*<<< orphan*/  load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	FUNC6(&cfs_rq->load, se->load.weight);
	if (!FUNC4(se))
		FUNC2(FUNC5(cfs_rq), se->load.weight);
	if (FUNC1(se)) {
		FUNC0(cfs_rq, se->load.weight);
		FUNC3(&se->group_node, &cfs_rq->tasks);
	}
	cfs_rq->nr_running++;
}