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
struct sched_entity {unsigned long sum_exec_runtime; unsigned long prev_sum_exec_runtime; unsigned long vruntime; } ;
struct cfs_rq {int nr_running; } ;
typedef  unsigned long s64 ;
struct TYPE_2__ {int /*<<< orphan*/  curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAKEUP_PREEMPT ; 
 struct sched_entity* FUNC0 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (struct cfs_rq*,struct sched_entity*) ; 
 unsigned long sysctl_sched_min_granularity ; 

__attribute__((used)) static void
FUNC6(struct cfs_rq *cfs_rq, struct sched_entity *curr)
{
	unsigned long ideal_runtime, delta_exec;

	ideal_runtime = FUNC5(cfs_rq, curr);
	delta_exec = curr->sum_exec_runtime - curr->prev_sum_exec_runtime;
	if (delta_exec > ideal_runtime) {
		FUNC2(FUNC3(cfs_rq)->curr);
		/*
		 * The current task ran long enough, ensure it doesn't get
		 * re-elected due to buddy favours.
		 */
		FUNC1(cfs_rq, curr);
		return;
	}

	/*
	 * Ensure that a task that missed wakeup preemption by a
	 * narrow margin doesn't have to wait for a full slice.
	 * This also mitigates buddy induced latencies under load.
	 */
	if (!FUNC4(WAKEUP_PREEMPT))
		return;

	if (delta_exec < sysctl_sched_min_granularity)
		return;

	if (cfs_rq->nr_running > 1) {
		struct sched_entity *se = FUNC0(cfs_rq);
		s64 delta = curr->vruntime - se->vruntime;

		if (delta < 0)
			return;

		if (delta > ideal_runtime)
			FUNC2(FUNC3(cfs_rq)->curr);
	}
}