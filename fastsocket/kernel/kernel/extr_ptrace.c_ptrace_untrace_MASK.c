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
struct task_struct {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_4__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_3__ {int flags; scalar_t__ group_stop_count; } ;

/* Variables and functions */
 int SIGNAL_STOP_STOPPED ; 
 int /*<<< orphan*/  TASK_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct task_struct *child)
{
	FUNC2(&child->sighand->siglock);
	if (FUNC4(child)) {
		/*
		 * If the group stop is completed or in progress,
		 * this thread was already counted as stopped.
		 */
		if (child->signal->flags & SIGNAL_STOP_STOPPED ||
		    child->signal->group_stop_count)
			FUNC0(child, TASK_STOPPED);
		else
			FUNC1(child, 1);
	}
	FUNC3(&child->sighand->siglock);
}