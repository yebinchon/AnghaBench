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
struct workqueue_struct {int /*<<< orphan*/  cpu_wq; } ;
struct cpu_workqueue_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct workqueue_struct*) ; 
 struct cpu_workqueue_struct* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int singlethread_cpu ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct cpu_workqueue_struct *FUNC3(struct workqueue_struct *wq, int cpu)
{
	if (FUNC2(FUNC0(wq)))
		cpu = singlethread_cpu;
	return FUNC1(wq->cpu_wq, cpu);
}