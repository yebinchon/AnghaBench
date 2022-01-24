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
struct rt_mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_mutex*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rt_mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt_mutex*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_mutex*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rt_mutex *lock)
{
	/*
	 * We have to be careful here if the atomic speedups are
	 * enabled, such that, when
	 *  - no other waiter is on the lock
	 *  - the lock has been released since we did the cmpxchg
	 * the lock can be released or taken while we are doing the
	 * checks and marking the lock with RT_MUTEX_HAS_WAITERS.
	 *
	 * The atomic acquire/release aware variant of
	 * mark_rt_mutex_waiters uses a cmpxchg loop. After setting
	 * the WAITERS bit, the atomic release / acquire can not
	 * happen anymore and lock->wait_lock protects us from the
	 * non-atomic case.
	 *
	 * Note, that this might set lock->owner =
	 * RT_MUTEX_HAS_WAITERS in the case the lock is not contended
	 * any more. This is fixed up when we take the ownership.
	 * This is the transitional state explained at the top of this file.
	 */
	FUNC1(lock);

	if (FUNC3(lock) && !FUNC5(lock, current))
		return 0;

	/* We got the lock. */
	FUNC0(lock);

	FUNC4(lock, current, 0);

	FUNC2(lock, current);

	return 1;
}