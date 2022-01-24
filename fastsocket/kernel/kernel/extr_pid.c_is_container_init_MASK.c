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
struct task_struct {int dummy; } ;
struct pid {size_t level; TYPE_1__* numbers; } ;
struct TYPE_2__ {int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct pid* FUNC2 (struct task_struct*) ; 

int FUNC3(struct task_struct *tsk)
{
	int ret = 0;
	struct pid *pid;

	FUNC0();
	pid = FUNC2(tsk);
	if (pid != NULL && pid->numbers[pid->level].nr == 1)
		ret = 1;
	FUNC1();

	return ret;
}