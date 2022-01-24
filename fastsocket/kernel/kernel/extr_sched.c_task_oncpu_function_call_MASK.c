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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,void (*) (void*),void*,int) ; 
 int FUNC3 (struct task_struct*) ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 

void FUNC5(struct task_struct *p,
			      void (*func) (void *info), void *info)
{
	int cpu;

	FUNC0();
	cpu = FUNC3(p);
	if (FUNC4(p))
		FUNC2(cpu, func, info, 1);
	FUNC1();
}