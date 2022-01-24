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
struct sched_entity {int dummy; } ;
struct cfs_rq {int nr_running; } ;
struct TYPE_2__ {int /*<<< orphan*/  hrtick_timer; int /*<<< orphan*/  curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOUBLE_TICK ; 
 int /*<<< orphan*/  WAKEUP_PREEMPT ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC6 (struct cfs_rq*) ; 

__attribute__((used)) static void
FUNC7(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
{
	/*
	 * Update run-time statistics of the 'current'.
	 */
	FUNC5(cfs_rq);

	/*
	 * Update share accounting for long-running entities.
	 */
	FUNC6(cfs_rq);

#ifdef CONFIG_SCHED_HRTICK
	/*
	 * queued ticks are scheduled to match the slice, so don't bother
	 * validating it and just reschedule.
	 */
	if (queued) {
		resched_task(rq_of(cfs_rq)->curr);
		return;
	}
	/*
	 * don't let the period tick interfere with the hrtick preemption
	 */
	if (!sched_feat(DOUBLE_TICK) &&
			hrtimer_active(&rq_of(cfs_rq)->hrtick_timer))
		return;
#endif

	if (cfs_rq->nr_running > 1 || !FUNC4(WAKEUP_PREEMPT))
		FUNC0(cfs_rq, curr);
}