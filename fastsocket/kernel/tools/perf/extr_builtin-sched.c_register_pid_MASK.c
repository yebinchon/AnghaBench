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
struct task_task {int dummy; } ;
struct task_desc {unsigned long pid; size_t nr; int /*<<< orphan*/  comm; } ;
struct perf_sched {size_t nr_tasks; struct task_desc** tasks; struct task_desc** pid_to_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long MAX_PID ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sched*,struct task_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned long,char const*) ; 
 struct task_desc** FUNC3 (struct task_desc**,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ verbose ; 
 struct task_desc* FUNC5 (int) ; 

__attribute__((used)) static struct task_desc *FUNC6(struct perf_sched *sched,
				      unsigned long pid, const char *comm)
{
	struct task_desc *task;

	FUNC0(pid >= MAX_PID);

	task = sched->pid_to_task[pid];

	if (task)
		return task;

	task = FUNC5(sizeof(*task));
	task->pid = pid;
	task->nr = sched->nr_tasks;
	FUNC4(task->comm, comm);
	/*
	 * every task starts in sleeping state - this gets ignored
	 * if there's no wakeup pointing to this sleep state:
	 */
	FUNC1(sched, task, 0, 0);

	sched->pid_to_task[pid] = task;
	sched->nr_tasks++;
	sched->tasks = FUNC3(sched->tasks, sched->nr_tasks * sizeof(struct task_task *));
	FUNC0(!sched->tasks);
	sched->tasks[task->nr] = task;

	if (verbose)
		FUNC2("registered task #%ld, PID %ld (%s)\n", sched->nr_tasks, pid, comm);

	return task;
}