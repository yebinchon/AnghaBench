#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct mm_struct {TYPE_4__* core_state; } ;
struct core_thread {struct task_struct* task; struct core_thread* next; } ;
struct TYPE_11__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_9__ {struct core_thread* next; } ;
struct TYPE_10__ {TYPE_3__ dumper; } ;
struct TYPE_8__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_7__ {int group_exit_code; int /*<<< orphan*/  flags; int /*<<< orphan*/ * group_exit_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGNAL_GROUP_EXIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct mm_struct *mm, bool core_dumped)
{
	struct core_thread *curr, *next;
	struct task_struct *task;

	FUNC2(&current->sighand->siglock);
	if (core_dumped && !FUNC0(current))
		current->signal->group_exit_code |= 0x80;
	current->signal->group_exit_task = NULL;
	current->signal->flags = SIGNAL_GROUP_EXIT;
	FUNC3(&current->sighand->siglock);

	next = mm->core_state->dumper.next;
	while ((curr = next) != NULL) {
		next = curr->next;
		task = curr->task;
		/*
		 * see exit_mm(), curr->task must not see
		 * ->task == NULL before we read ->next.
		 */
		FUNC1();
		curr->task = NULL;
		FUNC4(task);
	}

	mm->core_state = NULL;
}