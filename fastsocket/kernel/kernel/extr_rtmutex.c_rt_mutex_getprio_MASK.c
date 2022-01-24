#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int normal_prio; } ;
struct TYPE_3__ {int /*<<< orphan*/  prio; } ;
struct TYPE_4__ {TYPE_1__ pi_list_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 TYPE_2__* FUNC3 (struct task_struct*) ; 

int FUNC4(struct task_struct *task)
{
	if (FUNC0(!FUNC2(task)))
		return task->normal_prio;

	return FUNC1(FUNC3(task)->pi_list_entry.prio,
		   task->normal_prio);
}