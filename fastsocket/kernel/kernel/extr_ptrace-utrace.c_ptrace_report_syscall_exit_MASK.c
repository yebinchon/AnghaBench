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
struct ptrace_context {int /*<<< orphan*/  signr; int /*<<< orphan*/  resume; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  UTRACE_INTERRUPT ; 
 int /*<<< orphan*/  UTRACE_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ptrace_context* FUNC1 (struct utrace_engine*) ; 
 scalar_t__ FUNC2 (struct ptrace_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptrace_context*) ; 

__attribute__((used)) static u32 FUNC4(u32 action, struct utrace_engine *engine,
				      struct pt_regs *regs)
{
	struct ptrace_context *ctx = FUNC1(engine);

	if (FUNC2(ctx))
		return UTRACE_STOP;

	if (FUNC0(ctx->resume)) {
		ctx->signr = SIGTRAP;
		return UTRACE_INTERRUPT;
	}

	FUNC3(ctx);
	return UTRACE_STOP;
}