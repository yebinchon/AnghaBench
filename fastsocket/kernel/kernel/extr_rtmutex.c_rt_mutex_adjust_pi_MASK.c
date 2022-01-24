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
struct task_struct {scalar_t__ prio; int /*<<< orphan*/  pi_lock; struct rt_mutex_waiter* pi_blocked_on; } ;
struct TYPE_2__ {scalar_t__ prio; } ;
struct rt_mutex_waiter {TYPE_1__ list_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct task_struct *task)
{
	struct rt_mutex_waiter *waiter;
	unsigned long flags;

	FUNC2(&task->pi_lock, flags);

	waiter = task->pi_blocked_on;
	if (!waiter || waiter->list_entry.prio == task->prio) {
		FUNC3(&task->pi_lock, flags);
		return;
	}

	FUNC3(&task->pi_lock, flags);

	/* gets dropped in rt_mutex_adjust_prio_chain()! */
	FUNC0(task);
	FUNC1(task, 0, NULL, NULL, task);
}