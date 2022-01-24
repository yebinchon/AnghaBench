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
struct task_struct {scalar_t__ prio; int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  pi_waiters; } ;
struct rt_mutex_waiter {int /*<<< orphan*/  pi_list_entry; struct task_struct* task; } ;
struct rt_mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_mutex*) ; 
 struct task_struct* FUNC5 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt_mutex*) ; 
 struct rt_mutex_waiter* FUNC7 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC10(struct rt_mutex *lock,
				    struct task_struct *task)
{
	struct task_struct *pendowner = FUNC5(lock);
	struct rt_mutex_waiter *next;
	unsigned long flags;

	if (!FUNC6(lock))
		return 0;

	if (pendowner == task)
		return 1;

	FUNC8(&pendowner->pi_lock, flags);
	if (task->prio >= pendowner->prio) {
		FUNC9(&pendowner->pi_lock, flags);
		return 0;
	}

	/*
	 * Check if a waiter is enqueued on the pending owners
	 * pi_waiters list. Remove it and readjust pending owners
	 * priority.
	 */
	if (FUNC1(!FUNC4(lock))) {
		FUNC9(&pendowner->pi_lock, flags);
		return 1;
	}

	/* No chain handling, pending owner is not blocked on anything: */
	next = FUNC7(lock);
	FUNC3(&next->pi_list_entry, &pendowner->pi_waiters);
	FUNC0(pendowner);
	FUNC9(&pendowner->pi_lock, flags);

	/*
	 * We are going to steal the lock and a waiter was
	 * enqueued on the pending owners pi_waiters queue. So
	 * we have to enqueue this waiter into
	 * task->pi_waiters list. This covers the case,
	 * where task is boosted because it holds another
	 * lock and gets unboosted because the booster is
	 * interrupted, so we would delay a waiter with higher
	 * priority as task->normal_prio.
	 *
	 * Note: in the rare case of a SCHED_OTHER task changing
	 * its priority and thus stealing the lock, next->task
	 * might be task:
	 */
	if (FUNC1(next->task != task)) {
		FUNC8(&task->pi_lock, flags);
		FUNC2(&next->pi_list_entry, &task->pi_waiters);
		FUNC0(task);
		FUNC9(&task->pi_lock, flags);
	}
	return 1;
}