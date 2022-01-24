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
struct task_struct {int /*<<< orphan*/ * sched_class; } ;
struct sched_param {int /*<<< orphan*/  sched_priority; } ;
struct TYPE_2__ {struct task_struct* stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RT_PRIO ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  rt_sched_class ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  stop_sched_class ; 

void FUNC2(int cpu, struct task_struct *stop)
{
	struct sched_param param = { .sched_priority = MAX_RT_PRIO - 1 };
	struct task_struct *old_stop = FUNC0(cpu)->stop;

	if (stop) {
		/*
		 * Make it appear like a SCHED_FIFO task, its something
		 * userspace knows about and won't get confused about.
		 *
		 * Also, it will make PI more or less work without too
		 * much confusion -- but then, stop work should not
		 * rely on PI working anyway.
		 */
		FUNC1(stop, SCHED_FIFO, &param);

		stop->sched_class = &stop_sched_class;
	}

	FUNC0(cpu)->stop = stop;

	if (old_stop) {
		/*
		 * Reset it back to a normal scheduling class so that
		 * it can die in pieces.
		 */
		old_stop->sched_class = &rt_sched_class;
	}
}