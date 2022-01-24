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
typedef  scalar_t__ u64 ;
struct task_desc {char* comm; unsigned long nr_events; unsigned long curr_event; int /*<<< orphan*/  work_done_sem; scalar_t__ cpu_usage; int /*<<< orphan*/ * atoms; int /*<<< orphan*/  ready_for_work; } ;
struct sched_thread_parms {struct perf_sched* sched; struct task_desc* task; } ;
struct perf_sched {int /*<<< orphan*/  work_done_wait_mutex; int /*<<< orphan*/  start_work_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PR_SET_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct sched_thread_parms*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_sched*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 

__attribute__((used)) static void *FUNC10(void *ctx)
{
	struct sched_thread_parms *parms = ctx;
	struct task_desc *this_task = parms->task;
	struct perf_sched *sched = parms->sched;
	u64 cpu_usage_0, cpu_usage_1;
	unsigned long i, ret;
	char comm2[22];
	int fd;

	FUNC1(parms);

	FUNC9(comm2, ":%s", this_task->comm);
	FUNC4(PR_SET_NAME, comm2);
	fd = FUNC7();
	if (fd < 0)
		return NULL;
again:
	ret = FUNC8(&this_task->ready_for_work);
	FUNC0(ret);
	ret = FUNC5(&sched->start_work_mutex);
	FUNC0(ret);
	ret = FUNC6(&sched->start_work_mutex);
	FUNC0(ret);

	cpu_usage_0 = FUNC2(fd);

	for (i = 0; i < this_task->nr_events; i++) {
		this_task->curr_event = i;
		FUNC3(sched, this_task->atoms[i]);
	}

	cpu_usage_1 = FUNC2(fd);
	this_task->cpu_usage = cpu_usage_1 - cpu_usage_0;
	ret = FUNC8(&this_task->work_done_sem);
	FUNC0(ret);

	ret = FUNC5(&sched->work_done_wait_mutex);
	FUNC0(ret);
	ret = FUNC6(&sched->work_done_wait_mutex);
	FUNC0(ret);

	goto again;
}