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
struct task_struct {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  pi_waiters; struct rt_mutex_waiter* pi_blocked_on; } ;
struct rt_mutex_waiter {int /*<<< orphan*/  pi_list_entry; struct rt_mutex* lock; struct task_struct* task; int /*<<< orphan*/  list_entry; } ;
struct rt_mutex {int /*<<< orphan*/  wait_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/  pi_waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT_MUTEX_OWNER_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_mutex*,struct task_struct*,int /*<<< orphan*/ ) ; 
 struct rt_mutex_waiter* FUNC5 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static void FUNC9(struct rt_mutex *lock)
{
	struct rt_mutex_waiter *waiter;
	struct task_struct *pendowner;
	unsigned long flags;

	FUNC6(&current->pi_lock, flags);

	waiter = FUNC5(lock);
	FUNC2(&waiter->list_entry, &lock->wait_list);

	/*
	 * Remove it from current->pi_waiters. We do not adjust a
	 * possible priority boost right now. We execute wakeup in the
	 * boosted mode and go back to normal after releasing
	 * lock->wait_lock.
	 */
	FUNC2(&waiter->pi_list_entry, &current->pi_waiters);
	pendowner = waiter->task;
	waiter->task = NULL;

	FUNC4(lock, pendowner, RT_MUTEX_OWNER_PENDING);

	FUNC7(&current->pi_lock, flags);

	/*
	 * Clear the pi_blocked_on variable and enqueue a possible
	 * waiter into the pi_waiters list of the pending owner. This
	 * prevents that in case the pending owner gets unboosted a
	 * waiter with higher priority than pending-owner->normal_prio
	 * is blocked on the unboosted (pending) owner.
	 */
	FUNC6(&pendowner->pi_lock, flags);

	FUNC0(!pendowner->pi_blocked_on);
	FUNC0(pendowner->pi_blocked_on != waiter);
	FUNC0(pendowner->pi_blocked_on->lock != lock);

	pendowner->pi_blocked_on = NULL;

	if (FUNC3(lock)) {
		struct rt_mutex_waiter *next;

		next = FUNC5(lock);
		FUNC1(&next->pi_list_entry, &pendowner->pi_waiters);
	}
	FUNC7(&pendowner->pi_lock, flags);

	FUNC8(pendowner);
}