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
struct task_struct {int /*<<< orphan*/  comm; int /*<<< orphan*/  pid; } ;
struct audit_context {int /*<<< orphan*/  target_comm; int /*<<< orphan*/  target_sid; int /*<<< orphan*/  target_sessionid; int /*<<< orphan*/  target_uid; int /*<<< orphan*/  target_auid; int /*<<< orphan*/  target_pid; } ;
struct TYPE_2__ {struct audit_context* audit_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

void FUNC5(struct task_struct *t)
{
	struct audit_context *context = current->audit_context;

	context->target_pid = t->pid;
	context->target_auid = FUNC0(t);
	context->target_uid = FUNC4(t);
	context->target_sessionid = FUNC1(t);
	FUNC3(t, &context->target_sid);
	FUNC2(context->target_comm, t->comm, TASK_COMM_LEN);
}