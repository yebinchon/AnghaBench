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
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct ptrace_context {int options; long signr; int resume; } ;

/* Variables and functions */
 int EIO ; 
#define  PTRACE_EVENT_CLONE 134 
#define  PTRACE_EVENT_EXEC 133 
#define  PTRACE_EVENT_FORK 132 
#define  PTRACE_EVENT_SIGNAL 131 
#define  PTRACE_EVENT_SYSCALL 130 
#define  PTRACE_EVENT_VFORK 129 
#define  PTRACE_EVENT_VFORK_DONE 128 
 int PTRACE_O_TRACEVFORKDONE ; 
 long PTRACE_SYSCALL ; 
 int /*<<< orphan*/  SEND_SIG_PRIV ; 
 long SIGTRAP ; 
 int UTRACE_INTERRUPT ; 
 int UTRACE_REPORT ; 
 int UTRACE_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct ptrace_context*,struct task_struct*) ; 
 int FUNC1 (struct ptrace_context*) ; 
 struct ptrace_context* FUNC2 (struct utrace_engine*) ; 
 int FUNC3 (struct task_struct*,struct utrace_engine*,long) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*,struct utrace_engine*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (long,int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct ptrace_context*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ptrace_context*) ; 
 int /*<<< orphan*/  FUNC8 (long) ; 

__attribute__((used)) static int FUNC9(struct task_struct *tracee,
				struct utrace_engine *engine,
				long request, long data)
{
	struct ptrace_context *ctx = FUNC2(engine);
	int action;

	if (!FUNC8(data))
		return -EIO;

	action = FUNC3(tracee, engine, request);
	if (action < 0)
		return action;

	switch (FUNC1(ctx)) {
	case PTRACE_EVENT_VFORK:
		if (ctx->options & PTRACE_O_TRACEVFORKDONE) {
			FUNC6(ctx, PTRACE_EVENT_VFORK_DONE);
			action = UTRACE_REPORT;
		}
		break;

	case PTRACE_EVENT_EXEC:
	case PTRACE_EVENT_FORK:
	case PTRACE_EVENT_CLONE:
	case PTRACE_EVENT_VFORK_DONE:
		if (request == PTRACE_SYSCALL) {
			FUNC7(ctx);
			FUNC0(ctx, tracee);
			return 0;
		}

		if (action != UTRACE_RESUME) {
			/*
			 * single-stepping. UTRACE_SIGNAL_REPORT will
			 * synthesize a trap to follow the syscall insn.
			*/
			ctx->signr = SIGTRAP;
			action = UTRACE_INTERRUPT;
		}
		break;

	case PTRACE_EVENT_SYSCALL:
		if (data)
			FUNC5(data, SEND_SIG_PRIV, tracee);
		break;

	case PTRACE_EVENT_SIGNAL:
		ctx->signr = data;
		break;
	}

	ctx->resume = action;
	FUNC4(tracee, engine, action, true);
	return 0;
}