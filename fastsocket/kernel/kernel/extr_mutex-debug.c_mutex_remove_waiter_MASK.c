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
struct thread_info {TYPE_1__* task; } ;
struct mutex_waiter {TYPE_1__* task; int /*<<< orphan*/  list; } ;
struct mutex {int dummy; } ;
struct TYPE_2__ {struct mutex_waiter* blocked_on; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mutex *lock, struct mutex_waiter *waiter,
			 struct thread_info *ti)
{
	FUNC0(FUNC2(&waiter->list));
	FUNC0(waiter->task != ti->task);
	FUNC0(ti->task->blocked_on != waiter);
	ti->task->blocked_on = NULL;

	FUNC1(&waiter->list);
	waiter->task = NULL;
}