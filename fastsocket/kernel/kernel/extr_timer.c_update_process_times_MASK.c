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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int) ; 
 struct task_struct* current ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 

void FUNC9(int user_tick)
{
	struct task_struct *p = current;
	int cpu = FUNC8();

	/* Note: this timer irq context must be accounted for as well. */
	FUNC0(p, user_tick);
	FUNC5();
	FUNC4(cpu, user_tick);
	FUNC3();
#ifdef CONFIG_IRQ_WORK
	if (in_irq())
		irq_work_run();
#endif
	FUNC7();
	FUNC6(p);
}