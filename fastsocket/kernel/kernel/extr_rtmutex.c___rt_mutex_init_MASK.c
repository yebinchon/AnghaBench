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
struct rt_mutex {int /*<<< orphan*/  wait_lock; int /*<<< orphan*/  wait_list; int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt_mutex*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct rt_mutex *lock, const char *name)
{
	lock->owner = NULL;
	FUNC2(&lock->wait_lock);
	FUNC1(&lock->wait_list, &lock->wait_lock);

	FUNC0(lock, name);
}