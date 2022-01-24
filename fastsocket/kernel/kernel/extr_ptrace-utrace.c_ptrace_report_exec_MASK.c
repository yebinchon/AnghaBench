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
struct ptrace_context {int options; } ;
struct pt_regs {int dummy; } ;
struct linux_binprm {int dummy; } ;
struct linux_binfmt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_EVENT_EXEC ; 
 int PTRACE_O_TRACEEXEC ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  UTRACE_RESUME ; 
 int /*<<< orphan*/  UTRACE_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct ptrace_context* FUNC1 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptrace_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ptrace_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(u32 action, struct utrace_engine *engine,
			      const struct linux_binfmt *fmt,
			      const struct linux_binprm *bprm,
			      struct pt_regs *regs)
{
	struct ptrace_context *ctx = FUNC1(engine);

	FUNC0(FUNC2(ctx));

	if (!(ctx->options & PTRACE_O_TRACEEXEC)) {
		/*
		 * Old-fashioned ptrace'd exec just posts a plain signal.
		 */
		FUNC3(SIGTRAP, current, 0);
		return UTRACE_RESUME;
	}

	FUNC4(ctx, PTRACE_EVENT_EXEC);
	return UTRACE_STOP;
}