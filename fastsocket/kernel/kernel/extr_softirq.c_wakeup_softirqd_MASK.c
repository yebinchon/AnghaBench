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
struct task_struct {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ TASK_RUNNING ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksoftirqd ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 

void FUNC2(void)
{
	/* Interrupts are disabled: no need to stop preemption */
	struct task_struct *tsk = FUNC0(ksoftirqd);

	if (tsk && tsk->state != TASK_RUNNING)
		FUNC1(tsk);
}