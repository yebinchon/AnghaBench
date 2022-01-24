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
struct task_struct {int dummy; } ;
struct rt_mutex_waiter {int /*<<< orphan*/  task; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_mutex*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_mutex*,struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*,int) ; 
 scalar_t__ FUNC9 (struct rt_mutex*,struct task_struct*) ; 

int FUNC10(struct rt_mutex *lock,
			      struct rt_mutex_waiter *waiter,
			      struct task_struct *task, int detect_deadlock)
{
	int ret;

	FUNC6(&lock->wait_lock);

	FUNC2(lock);

	if (!FUNC4(lock) || FUNC9(lock, task)) {
		/* We got the lock for task. */
		FUNC0(lock);
		FUNC5(lock, task, 0);
		FUNC7(&lock->wait_lock);
		FUNC3(lock, task);
		return 1;
	}

	ret = FUNC8(lock, waiter, task, detect_deadlock);

	if (ret && !waiter->task) {
		/*
		 * Reset the return value. We might have
		 * returned with -EDEADLK and the owner
		 * released the lock while we were walking the
		 * pi chain.  Let the waiter sort it out.
		 */
		ret = 0;
	}
	FUNC7(&lock->wait_lock);

	FUNC1(waiter);

	return ret;
}