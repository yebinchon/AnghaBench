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
struct task_struct {TYPE_1__* pids; struct task_struct* group_leader; } ;
struct pid_namespace {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int PIDTYPE_PID ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pid_namespace*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct pid_namespace* FUNC5 (int /*<<< orphan*/ ) ; 

pid_t FUNC6(struct task_struct *task, enum pid_type type,
			struct pid_namespace *ns)
{
	pid_t nr = 0;

	FUNC3();
	if (!ns)
		ns = FUNC5(current);
	if (FUNC0(FUNC1(task))) {
		if (type != PIDTYPE_PID)
			task = task->group_leader;
		nr = FUNC2(task->pids[type].pid, ns);
	}
	FUNC4();

	return nr;
}