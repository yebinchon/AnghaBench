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
struct sched_entity {int /*<<< orphan*/  on_rq; } ;
struct task_struct {scalar_t__ policy; struct sched_entity se; } ;
struct rq {struct task_struct* idle; struct task_struct* curr; } ;
struct cfs_rq {scalar_t__ nr_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LAST_BUDDY ; 
 int /*<<< orphan*/  NEXT_BUDDY ; 
 scalar_t__ SCHED_IDLE ; 
 scalar_t__ SCHED_NORMAL ; 
 int /*<<< orphan*/  WAKEUP_PREEMPT ; 
 int WF_FORK ; 
 int /*<<< orphan*/  FUNC1 (struct sched_entity*) ; 
 scalar_t__ FUNC2 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct sched_entity**,struct sched_entity**) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ sched_nr_latency ; 
 int /*<<< orphan*/  FUNC6 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC7 (struct sched_entity*) ; 
 struct cfs_rq* FUNC8 (struct task_struct*) ; 
 scalar_t__ FUNC9 (struct task_struct*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct cfs_rq*) ; 
 int FUNC13 (struct sched_entity*,struct sched_entity*) ; 

__attribute__((used)) static void FUNC14(struct rq *rq, struct task_struct *p, int wake_flags)
{
	struct task_struct *curr = rq->curr;
	struct sched_entity *se = &curr->se, *pse = &p->se;
	struct cfs_rq *cfs_rq = FUNC8(curr);
	int scale = cfs_rq->nr_running >= sched_nr_latency;
	int next_buddy_marked = 0;

	if (FUNC11(se == pse))
		return;

	/*
 	 * This is possible from callers such as pull_task(), in which we
	 * unconditionally check_prempt_curr() after an enqueue (which may have
	 * lead to a throttle).  This both saves work and prevents false
	 * next-buddy nomination below.
	 */
	if (FUNC11(FUNC10(FUNC1(pse))))
		return;

	if (FUNC5(NEXT_BUDDY) && scale && !(wake_flags & WF_FORK)) {
		FUNC7(pse);
		next_buddy_marked = 1;
	}

	/*
	 * We can come here with TIF_NEED_RESCHED already set from new task
	 * wake up path.
	 *
	 * Note: this also catches the edge-case of curr being in a throttled
	 * group (e.g. via set_curr_task), since update_curr() (in the
	 * enqueue of curr) will have resulted in resched being set.  This
	 * prevents us from potentially nominating it as a false LAST_BUDDY
	 * below.
	 */
	if (FUNC9(curr))
		return;

	/*
	 * Batch and idle tasks do not preempt (their preemption is driven by
	 * the tick):
	 */
	if (FUNC11(p->policy != SCHED_NORMAL))
		return;

	/* Idle tasks are by definition preempted by everybody. */
	if (FUNC11(curr->policy == SCHED_IDLE))
		goto preempt;

	if (!FUNC5(WAKEUP_PREEMPT))
		return;

	FUNC12(cfs_rq);
	FUNC3(&se, &pse);
	FUNC0(!pse);
	if (FUNC13(se, pse) == 1) {
		/*
		 * Bias pick_next to pick the sched entity that is
		 * triggering this preemption.
		 */
		if (!next_buddy_marked)
			FUNC7(pse);
		goto preempt;
	}

	return;

preempt:
	FUNC4(curr);
	/*
	 * Only set the backward buddy when the current task is still
	 * on the rq. This can happen when a wakeup gets interleaved
	 * with schedule on the ->pre_schedule() or idle_balance()
	 * point, either of which can * drop the rq lock.
	 *
	 * Also, during early boot the idle thread is in the fair class,
	 * for obvious reasons its a bad idea to schedule back to it.
	 */
	if (FUNC11(!se->on_rq || curr == rq->idle))
		return;

	if (FUNC5(LAST_BUDDY) && scale && FUNC2(se))
		FUNC6(se);
}