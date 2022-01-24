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
struct task_struct {int /*<<< orphan*/  pi_lock; struct rt_mutex_waiter* pi_blocked_on; int /*<<< orphan*/  pi_waiters; int /*<<< orphan*/  prio; } ;
struct rt_mutex_waiter {int /*<<< orphan*/  pi_list_entry; int /*<<< orphan*/  list_entry; struct rt_mutex* lock; struct task_struct* task; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  wait_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 scalar_t__ FUNC1 (struct rt_mutex_waiter*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct task_struct*,int,struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*) ; 
 scalar_t__ FUNC7 (struct rt_mutex*) ; 
 struct task_struct* FUNC8 (struct rt_mutex*) ; 
 struct rt_mutex_waiter* FUNC9 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct rt_mutex *lock,
				   struct rt_mutex_waiter *waiter,
				   struct task_struct *task,
				   int detect_deadlock)
{
	struct task_struct *owner = FUNC8(lock);
	struct rt_mutex_waiter *top_waiter = waiter;
	unsigned long flags;
	int chain_walk = 0, res;

	FUNC11(&task->pi_lock, flags);
	FUNC0(task);
	waiter->task = task;
	waiter->lock = lock;
	FUNC5(&waiter->list_entry, task->prio);
	FUNC5(&waiter->pi_list_entry, task->prio);

	/* Get the top priority waiter on the lock */
	if (FUNC7(lock))
		top_waiter = FUNC9(lock);
	FUNC3(&waiter->list_entry, &lock->wait_list);

	task->pi_blocked_on = waiter;

	FUNC13(&task->pi_lock, flags);

	if (waiter == FUNC9(lock)) {
		FUNC11(&owner->pi_lock, flags);
		FUNC4(&top_waiter->pi_list_entry, &owner->pi_waiters);
		FUNC3(&waiter->pi_list_entry, &owner->pi_waiters);

		FUNC0(owner);
		if (owner->pi_blocked_on)
			chain_walk = 1;
		FUNC13(&owner->pi_lock, flags);
	}
	else if (FUNC1(waiter, detect_deadlock))
		chain_walk = 1;

	if (!chain_walk)
		return 0;

	/*
	 * The owner can't disappear while holding a lock,
	 * so the owner struct is protected by wait_lock.
	 * Gets dropped in rt_mutex_adjust_prio_chain()!
	 */
	FUNC2(owner);

	FUNC12(&lock->wait_lock);

	res = FUNC6(owner, detect_deadlock, lock, waiter,
					 task);

	FUNC10(&lock->wait_lock);

	return res;
}