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
struct workqueue_struct {scalar_t__ rt; int /*<<< orphan*/  name; } ;
struct task_struct {int dummy; } ;
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
struct cpu_workqueue_struct {struct task_struct* thread; struct workqueue_struct* wq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  MAX_RT_PRIO ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 scalar_t__ FUNC2 (struct workqueue_struct*) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct cpu_workqueue_struct*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int) ; 
 int /*<<< orphan*/  worker_thread ; 

__attribute__((used)) static int FUNC6(struct cpu_workqueue_struct *cwq, int cpu)
{
	struct sched_param param = { .sched_priority = MAX_RT_PRIO-1 };
	struct workqueue_struct *wq = cwq->wq;
	const char *fmt = FUNC2(wq) ? "%s" : "%s/%d";
	struct task_struct *p;

	p = FUNC3(worker_thread, cwq, fmt, wq->name, cpu);
	/*
	 * Nobody can add the work_struct to this cwq,
	 *	if (caller is __create_workqueue)
	 *		nobody should see this wq
	 *	else // caller is CPU_UP_PREPARE
	 *		cpu is not on cpu_online_map
	 * so we can abort safely.
	 */
	if (FUNC0(p))
		return FUNC1(p);
	if (cwq->wq->rt)
		FUNC4(p, SCHED_FIFO, &param);
	cwq->thread = p;

	FUNC5(cwq->thread, cpu);

	return 0;
}