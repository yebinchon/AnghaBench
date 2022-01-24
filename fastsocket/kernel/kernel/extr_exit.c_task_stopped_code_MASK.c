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
struct task_struct {int exit_code; TYPE_1__* signal; } ;
struct TYPE_2__ {int flags; int group_exit_code; } ;

/* Variables and functions */
 int SIGNAL_STOP_STOPPED ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 

__attribute__((used)) static int *FUNC1(struct task_struct *p, bool ptrace)
{
	if (ptrace) {
		if (FUNC0(p))
			return &p->exit_code;
	} else {
		if (p->signal->flags & SIGNAL_STOP_STOPPED)
			return &p->signal->group_exit_code;
	}
	return NULL;
}