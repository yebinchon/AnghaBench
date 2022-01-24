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
struct upid {TYPE_1__* ns; int /*<<< orphan*/  pid_chain; } ;
struct pid {int level; int /*<<< orphan*/  rcu; struct upid* numbers; } ;
struct TYPE_2__ {scalar_t__ nr_hashed; int /*<<< orphan*/  proc_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delayed_put_pid ; 
 int /*<<< orphan*/  FUNC1 (struct upid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pidmap_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct pid *pid)
{
	/* We can be called with write_lock_irq(&tasklist_lock) held */
	int i;
	unsigned long flags;

	FUNC4(&pidmap_lock, flags);
	for (i = 0; i <= pid->level; i++) {
		struct upid *upid = pid->numbers + i;
		FUNC2(&upid->pid_chain);
		if (--upid->ns->nr_hashed == 0)
			FUNC3(&upid->ns->proc_work);
	}
	FUNC5(&pidmap_lock, flags);

	for (i = 0; i <= pid->level; i++)
		FUNC1(pid->numbers + i);

	FUNC0(&pid->rcu, delayed_put_pid);
}