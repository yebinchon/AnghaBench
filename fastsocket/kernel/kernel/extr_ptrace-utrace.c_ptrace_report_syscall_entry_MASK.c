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
typedef  int u32 ;
struct utrace_engine {int dummy; } ;
struct ptrace_context {int options; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int PTRACE_O_SYSEMU ; 
 int UTRACE_REPORT ; 
 int UTRACE_RESUME ; 
 int UTRACE_STOP ; 
 int UTRACE_SYSCALL_ABORT ; 
 int UTRACE_SYSCALL_RESUMED ; 
 int UTRACE_SYSCALL_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ptrace_context* FUNC1 (struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC2 (struct ptrace_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptrace_context*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static u32 FUNC6(u32 action, struct utrace_engine *engine,
				       struct pt_regs *regs)
{
	struct ptrace_context *ctx = FUNC1(engine);

	if (action & UTRACE_SYSCALL_RESUMED) {
		/*
		 * We already reported the first time.
		 * Nothing more to do now.
		 */
		if (FUNC4(ctx->options & PTRACE_O_SYSEMU))
			return UTRACE_SYSCALL_ABORT | UTRACE_REPORT;
		return FUNC5(action) | UTRACE_RESUME;
	}

	FUNC0(FUNC2(ctx));

	FUNC3(ctx);

	if (FUNC4(ctx->options & PTRACE_O_SYSEMU))
		return UTRACE_SYSCALL_ABORT | UTRACE_REPORT;
	/*
	 * Stop now to report.  We will get another callback after
	 * we resume, with the UTRACE_SYSCALL_RESUMED flag set.
	 */
	return UTRACE_SYSCALL_RUN | UTRACE_STOP;
}