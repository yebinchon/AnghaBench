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
struct cpu_workqueue_struct {scalar_t__ thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ current ; 
 TYPE_1__* keventd_wq ; 
 struct cpu_workqueue_struct* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 

int FUNC3(void)
{
	struct cpu_workqueue_struct *cwq;
	int cpu = FUNC2(); /* preempt-safe: keventd is per-cpu */
	int ret = 0;

	FUNC0(!keventd_wq);

	cwq = FUNC1(keventd_wq->cpu_wq, cpu);
	if (current == cwq->thread)
		ret = 1;

	return ret;

}