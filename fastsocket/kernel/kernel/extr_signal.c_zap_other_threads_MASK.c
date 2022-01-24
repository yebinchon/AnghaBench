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
struct TYPE_4__ {int /*<<< orphan*/  signal; } ;
struct task_struct {TYPE_2__ pending; scalar_t__ exit_state; TYPE_1__* signal; } ;
struct TYPE_3__ {scalar_t__ group_stop_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 struct task_struct* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int) ; 

void FUNC3(struct task_struct *p)
{
	struct task_struct *t;

	p->signal->group_stop_count = 0;

	for (t = FUNC0(p); t != p; t = FUNC0(t)) {
		/*
		 * Don't bother with already dead threads
		 */
		if (t->exit_state)
			continue;

		/* SIGKILL will be handled before any pending SIGSTOP */
		FUNC1(&t->pending.signal, SIGKILL);
		FUNC2(t, 1);
	}
}