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
struct task_struct {int /*<<< orphan*/  comm; } ;
struct seq_file {int dummy; } ;
struct pid {int dummy; } ;
struct cpu_workqueue_stats {int /*<<< orphan*/  executed; int /*<<< orphan*/  inserted; int /*<<< orphan*/  cpu; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pid* FUNC1 (int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC2 (struct pid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pid*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *p)
{
	struct cpu_workqueue_stats *cws = p;
	struct pid *pid;
	struct task_struct *tsk;

	pid = FUNC1(cws->pid);
	if (pid) {
		tsk = FUNC2(pid, PIDTYPE_PID);
		if (tsk) {
			FUNC5(s, "%3d %6d     %6u       %s\n", cws->cpu,
				   FUNC0(&cws->inserted), cws->executed,
				   tsk->comm);
			FUNC4(tsk);
		}
		FUNC3(pid);
	}

	return 0;
}