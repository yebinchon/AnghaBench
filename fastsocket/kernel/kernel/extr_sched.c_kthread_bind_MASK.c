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
struct TYPE_2__ {int nr_cpus_allowed; } ;
struct task_struct {int /*<<< orphan*/  flags; TYPE_1__ rt; int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_THREAD_BOUND ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 

void FUNC3(struct task_struct *p, unsigned int cpu)
{
	/* Must have done schedule() in kthread() before we set_task_cpu */
	if (!FUNC2(p, TASK_UNINTERRUPTIBLE)) {
		FUNC0(1);
		return;
	}

	p->cpus_allowed = FUNC1(cpu);
	p->rt.nr_cpus_allowed = 1;
	p->flags |= PF_THREAD_BOUND;
}