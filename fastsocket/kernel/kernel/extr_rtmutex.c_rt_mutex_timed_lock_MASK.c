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
struct hrtimer_sleeper {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  rt_mutex_slowlock ; 
 int FUNC1 (struct rt_mutex*,int /*<<< orphan*/ ,struct hrtimer_sleeper*,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct rt_mutex *lock, struct hrtimer_sleeper *timeout,
		    int detect_deadlock)
{
	FUNC0();

	return FUNC1(lock, TASK_INTERRUPTIBLE, timeout,
				       detect_deadlock, rt_mutex_slowlock);
}