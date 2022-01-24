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
struct task_struct {int exit_code; } ;
struct ptrace_context {int stop_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLD_TRAPPED ; 
 int PTRACE_EVENT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct task_struct*) ; 
 int /*<<< orphan*/  tasklist_lock ; 

__attribute__((used)) static void FUNC7(struct ptrace_context *ctx,
					struct task_struct *tracee)
{
	/*
	 * This can race with SIGKILL, but we borrow this race from
	 * the old ptrace implementation. ->exit_code is only needed
	 * for wait_task_stopped()->task_stopped_code(), we should
	 * change it to use ptrace_context.
	 */
	tracee->exit_code = ctx->stop_code & PTRACE_EVENT_MASK;
	FUNC0(!tracee->exit_code);

	FUNC4(&tasklist_lock);
	/*
	 * Don't want to allow preemption here, because
	 * sys_ptrace() needs this task to be inactive.
	 */
	FUNC2();
	/*
	 * It can be killed and then released by our subthread,
	 * or ptrace_attach() has not completed yet.
	 */
	if (FUNC6(tracee))
		FUNC1(tracee, CLD_TRAPPED);
	FUNC5(&tasklist_lock);
	FUNC3();
}