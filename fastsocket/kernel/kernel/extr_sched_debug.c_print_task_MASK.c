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
struct TYPE_2__ {int /*<<< orphan*/  sum_sleep_runtime; int /*<<< orphan*/  sum_exec_runtime; int /*<<< orphan*/  vruntime; } ;
struct task_struct {TYPE_1__ se; int /*<<< orphan*/  prio; scalar_t__ nivcsw; scalar_t__ nvcsw; int /*<<< orphan*/  pid; int /*<<< orphan*/  comm; } ;
struct seq_file {int dummy; } ;
struct rq {struct task_struct* curr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct seq_file *m, struct rq *rq, struct task_struct *p)
{
	if (rq->curr == p)
		FUNC0(m, "R");
	else
		FUNC0(m, " ");

	FUNC0(m, "%15s %5d %9Ld.%06ld %9Ld %5d ",
		p->comm, p->pid,
		FUNC1(p->se.vruntime),
		(long long)(p->nvcsw + p->nivcsw),
		p->prio);
#ifdef CONFIG_SCHEDSTATS
	SEQ_printf(m, "%9Ld.%06ld %9Ld.%06ld %9Ld.%06ld",
		SPLIT_NS(p->se.vruntime),
		SPLIT_NS(p->se.sum_exec_runtime),
		SPLIT_NS(p->se.sum_sleep_runtime));
#else
	FUNC0(m, "%15Ld %15Ld %15Ld.%06ld %15Ld.%06ld %15Ld.%06ld",
		0LL, 0LL, 0LL, 0L, 0LL, 0L, 0LL, 0L);
#endif
#ifdef CONFIG_CGROUP_SCHED
	SEQ_printf(m, " %s", task_group_path(task_group(p)));
#endif

	FUNC0(m, "\n");
}