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
struct rt_mutex_waiter {int task; } ;
struct rt_mutex {int /*<<< orphan*/  wait_lock; } ;
struct hrtimer_sleeper {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int FUNC0 (struct rt_mutex*,int /*<<< orphan*/ ,struct hrtimer_sleeper*,struct rt_mutex_waiter*,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_mutex*,struct rt_mutex_waiter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct rt_mutex *lock,
			       struct hrtimer_sleeper *to,
			       struct rt_mutex_waiter *waiter,
			       int detect_deadlock)
{
	int ret;

	FUNC5(&lock->wait_lock);

	FUNC4(TASK_INTERRUPTIBLE);

	ret = FUNC0(lock, TASK_INTERRUPTIBLE, to, waiter,
				  detect_deadlock);

	FUNC4(TASK_RUNNING);

	if (FUNC7(waiter->task))
		FUNC2(lock, waiter);

	/*
	 * try_to_take_rt_mutex() sets the waiter bit unconditionally. We might
	 * have to fix that up.
	 */
	FUNC1(lock);

	FUNC6(&lock->wait_lock);

	/*
	 * Readjust priority, when we did not get the lock. We might have been
	 * the pending owner and boosted. Since we did not take the lock, the
	 * PI boost has to go.
	 */
	if (FUNC7(ret))
		FUNC3(current);

	return ret;
}