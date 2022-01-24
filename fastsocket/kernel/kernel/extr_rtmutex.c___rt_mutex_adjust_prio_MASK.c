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
struct task_struct {int prio; } ;

/* Variables and functions */
 int FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 

__attribute__((used)) static void FUNC2(struct task_struct *task)
{
	int prio = FUNC0(task);

	if (task->prio != prio)
		FUNC1(task, prio);
}