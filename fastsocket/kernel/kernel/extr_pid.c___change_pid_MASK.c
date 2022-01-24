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
struct task_struct {struct pid_link* pids; } ;
struct pid_link {struct pid* pid; int /*<<< orphan*/  node; } ;
struct pid {int /*<<< orphan*/ * tasks; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int PIDTYPE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct pid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct task_struct *task, enum pid_type type,
			struct pid *new)
{
	struct pid_link *link;
	struct pid *pid;
	int tmp;

	link = &task->pids[type];
	pid = link->pid;

	FUNC1(&link->node);
	link->pid = new;

	for (tmp = PIDTYPE_MAX; --tmp >= 0; )
		if (!FUNC2(&pid->tasks[tmp]))
			return;

	FUNC0(pid);
}