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
struct task_struct {struct audit_context* audit_context; } ;
struct audit_context {scalar_t__ current_state; unsigned long long prio; scalar_t__ state; int* fds; int /*<<< orphan*/ * filterkey; scalar_t__ type; scalar_t__ sockaddr_len; scalar_t__ target_sid; scalar_t__ target_pid; int /*<<< orphan*/ * aux_pids; int /*<<< orphan*/ * aux; struct audit_context* previous; int /*<<< orphan*/  killed_trees; scalar_t__ in_syscall; } ;

/* Variables and functions */
 int AUDITSC_FAILURE ; 
 int AUDITSC_SUCCESS ; 
 scalar_t__ AUDIT_RECORD_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (struct audit_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_context*) ; 
 struct audit_context* FUNC3 (struct task_struct*,int,long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_context*,struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct audit_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC10(int success, long return_code)
{
	struct task_struct *tsk = current;
	struct audit_context *context;

	if (success)
		success = AUDITSC_SUCCESS;
	else
		success = AUDITSC_FAILURE;

	context = FUNC3(tsk, success, return_code);
	if (FUNC7(!context))
		return;

	if (context->in_syscall && context->current_state == AUDIT_RECORD_CONTEXT)
		FUNC5(context, tsk);

	context->in_syscall = 0;
	context->prio = context->state == AUDIT_RECORD_CONTEXT ? ~0ULL : 0;

	if (!FUNC8(&context->killed_trees))
		FUNC4(&context->killed_trees);

	if (context->previous) {
		struct audit_context *new_context = context->previous;
		context->previous  = NULL;
		FUNC1(context);
		tsk->audit_context = new_context;
	} else {
		FUNC2(context);
		FUNC9(context, NULL, 0);
		FUNC0(context);
		context->aux = NULL;
		context->aux_pids = NULL;
		context->target_pid = 0;
		context->target_sid = 0;
		context->sockaddr_len = 0;
		context->type = 0;
		context->fds[0] = -1;
		if (context->state != AUDIT_RECORD_CONTEXT) {
			FUNC6(context->filterkey);
			context->filterkey = NULL;
		}
		tsk->audit_context = context;
	}
}