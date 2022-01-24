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
struct task_struct {int /*<<< orphan*/  pi_lock; int /*<<< orphan*/ * pi_blocked_on; int /*<<< orphan*/  pi_waiters; } ;
struct rt_mutex_waiter {int /*<<< orphan*/  pi_list_entry; int /*<<< orphan*/ * task; int /*<<< orphan*/  list_entry; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  wait_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ,struct rt_mutex*,int /*<<< orphan*/ *,struct task_struct*) ; 
 scalar_t__ FUNC7 (struct rt_mutex*) ; 
 struct task_struct* FUNC8 (struct rt_mutex*) ; 
 struct rt_mutex_waiter* FUNC9 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct rt_mutex *lock,
			  struct rt_mutex_waiter *waiter)
{
	int first = (waiter == FUNC9(lock));
	struct task_struct *owner = FUNC8(lock);
	unsigned long flags;
	int chain_walk = 0;

	FUNC11(&current->pi_lock, flags);
	FUNC4(&waiter->list_entry, &lock->wait_list);
	waiter->task = NULL;
	current->pi_blocked_on = NULL;
	FUNC13(&current->pi_lock, flags);

	if (first && owner != current) {

		FUNC11(&owner->pi_lock, flags);

		FUNC4(&waiter->pi_list_entry, &owner->pi_waiters);

		if (FUNC7(lock)) {
			struct rt_mutex_waiter *next;

			next = FUNC9(lock);
			FUNC3(&next->pi_list_entry, &owner->pi_waiters);
		}
		FUNC1(owner);

		if (owner->pi_blocked_on)
			chain_walk = 1;

		FUNC13(&owner->pi_lock, flags);
	}

	FUNC0(!FUNC5(&waiter->pi_list_entry));

	if (!chain_walk)
		return;

	/* gets dropped in rt_mutex_adjust_prio_chain()! */
	FUNC2(owner);

	FUNC12(&lock->wait_lock);

	FUNC6(owner, 0, lock, NULL, current);

	FUNC10(&lock->wait_lock);
}