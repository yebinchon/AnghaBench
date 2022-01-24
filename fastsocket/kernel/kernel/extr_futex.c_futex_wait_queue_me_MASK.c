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
struct hrtimer_sleeper {int /*<<< orphan*/ * task; int /*<<< orphan*/  timer; } ;
struct futex_q {int /*<<< orphan*/  list; } ;
struct futex_hash_bucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct futex_q*,struct futex_hash_bucket*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct futex_hash_bucket *hb, struct futex_q *q,
				struct hrtimer_sleeper *timeout)
{
	/*
	 * The task state is guaranteed to be set before another task can
	 * wake it. set_current_state() is implemented using set_mb() and
	 * queue_me() calls spin_unlock() upon completion, both serializing
	 * access to the hash list and forcing another memory barrier.
	 */
	FUNC7(TASK_INTERRUPTIBLE);
	FUNC5(q, hb);

	/* Arm the timer */
	if (timeout) {
		FUNC2(&timeout->timer, HRTIMER_MODE_ABS);
		if (!FUNC1(&timeout->timer))
			timeout->task = NULL;
	}

	/*
	 * If we have been removed from the hash list, then another task
	 * has tried to wake us, and we can skip the call to schedule().
	 */
	if (FUNC3(!FUNC4(&q->list))) {
		/*
		 * If the timer has already expired, current will already be
		 * flagged for rescheduling. Only call schedule if there
		 * is no timeout, or if it has yet to expire.
		 */
		if (!timeout || timeout->task)
			FUNC6();
	}
	FUNC0(TASK_RUNNING);
}