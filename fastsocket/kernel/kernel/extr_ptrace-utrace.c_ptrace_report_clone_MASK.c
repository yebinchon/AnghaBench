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
typedef  int /*<<< orphan*/  u32 ;
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int options; int /*<<< orphan*/  eventmsg; } ;

/* Variables and functions */
 unsigned long CLONE_PTRACE ; 
 unsigned long CLONE_UNTRACED ; 
 unsigned long CLONE_VFORK ; 
 unsigned long CSIGNAL ; 
 int PTRACE_EVENT_CLONE ; 
 int PTRACE_EVENT_FORK ; 
 int PTRACE_EVENT_VFORK ; 
 int PTRACE_EVENT_VFORK_DONE ; 
 int PTRACE_O_TRACECLONE ; 
 int PTRACE_O_TRACEFORK ; 
 int PTRACE_O_TRACEVFORK ; 
 int PTRACE_O_TRACEVFORKDONE ; 
 unsigned long SIGCHLD ; 
 int /*<<< orphan*/  UTRACE_REPORT ; 
 int /*<<< orphan*/  UTRACE_RESUME ; 
 int /*<<< orphan*/  UTRACE_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int) ; 
 struct ptrace_context* FUNC2 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptrace_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct ptrace_context*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 

__attribute__((used)) static u32 FUNC6(u32 action, struct utrace_engine *engine,
			       unsigned long clone_flags,
			       struct task_struct *child)
{
	struct ptrace_context *ctx = FUNC2(engine);
	int event = 0;

	FUNC0(FUNC3(ctx));

	if (clone_flags & CLONE_UNTRACED) {
		/* no events reported */
	} else if (clone_flags & CLONE_VFORK) {
		if (ctx->options & PTRACE_O_TRACEVFORK)
			event = PTRACE_EVENT_VFORK;
		else if (ctx->options & PTRACE_O_TRACEVFORKDONE)
			event = PTRACE_EVENT_VFORK_DONE;
	} else if ((clone_flags & CSIGNAL) != SIGCHLD) {
		if (ctx->options & PTRACE_O_TRACECLONE)
			event = PTRACE_EVENT_CLONE;
	} else if (ctx->options & PTRACE_O_TRACEFORK) {
		event = PTRACE_EVENT_FORK;
	}
	/*
	 * Any of these reports implies auto-attaching the new child.
	 * So does CLONE_PTRACE, even with no event to report.
	 */
	if ((event && event != PTRACE_EVENT_VFORK_DONE) ||
				(clone_flags & CLONE_PTRACE))
		FUNC1(child, ctx->options);

	if (!event)
		return UTRACE_RESUME;

	FUNC4(ctx, event);
	ctx->eventmsg = FUNC5(child);
	/*
	 * We shouldn't stop now, inside the do_fork() path.
	 * We will stop later, before return to user-mode.
	 */
	if (event == PTRACE_EVENT_VFORK_DONE)
		return UTRACE_REPORT;
	else
		return UTRACE_STOP;
}