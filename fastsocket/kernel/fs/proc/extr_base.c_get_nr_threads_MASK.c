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
struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,unsigned long*) ; 

int FUNC3(struct task_struct *tsk)
{
	unsigned long flags;
	int count = 0;

	if (FUNC1(tsk, &flags)) {
		count = FUNC0(&tsk->signal->count);
		FUNC2(tsk, &flags);
	}
	return count;
}