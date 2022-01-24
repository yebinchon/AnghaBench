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
struct rt_mutex {struct task_struct* owner; } ;

/* Variables and functions */
 unsigned long RT_MUTEX_HAS_WAITERS ; 
 scalar_t__ FUNC0 (struct rt_mutex*) ; 

__attribute__((used)) static void
FUNC1(struct rt_mutex *lock, struct task_struct *owner,
		   unsigned long mask)
{
	unsigned long val = (unsigned long)owner | mask;

	if (FUNC0(lock))
		val |= RT_MUTEX_HAS_WAITERS;

	lock->owner = (struct task_struct *)val;
}