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
struct semaphore {scalar_t__ count; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct semaphore*,long) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct semaphore *sem, long jiffies)
{
	unsigned long flags;
	int result = 0;

	FUNC2(&sem->lock, flags);
	if (FUNC1(sem->count > 0))
		sem->count--;
	else
		result = FUNC0(sem, jiffies);
	FUNC3(&sem->lock, flags);

	return result;
}