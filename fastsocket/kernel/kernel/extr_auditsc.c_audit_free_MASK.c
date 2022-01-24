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
struct task_struct {int dummy; } ;
struct audit_context {scalar_t__ current_state; int /*<<< orphan*/  killed_trees; scalar_t__ in_syscall; } ;

/* Variables and functions */
 scalar_t__ AUDIT_RECORD_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct audit_context*) ; 
 struct audit_context* FUNC1 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_context*,struct task_struct*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct task_struct *tsk)
{
	struct audit_context *context;

	context = FUNC1(tsk, 0, 0);
	if (FUNC4(!context))
		return;

	/* Check for system calls that do not go through the exit
	 * function (e.g., exit_group), then free context block.
	 * We use GFP_ATOMIC here because we might be doing this
	 * in the context of the idle thread */
	/* that can happen only if we are called from do_exit() */
	if (context->in_syscall && context->current_state == AUDIT_RECORD_CONTEXT)
		FUNC3(context, tsk);
	if (!FUNC5(&context->killed_trees))
		FUNC2(&context->killed_trees);

	FUNC0(context);
}