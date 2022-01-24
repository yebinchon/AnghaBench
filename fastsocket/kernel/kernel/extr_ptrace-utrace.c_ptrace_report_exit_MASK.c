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
typedef  int /*<<< orphan*/  u32 ;
struct utrace_engine {int dummy; } ;
struct ptrace_context {long eventmsg; } ;
struct TYPE_2__ {int /*<<< orphan*/  signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_EVENT_EXIT ; 
 int /*<<< orphan*/  UTRACE_STOP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* current ; 
 struct ptrace_context* FUNC1 (struct utrace_engine*) ; 
 scalar_t__ FUNC2 (struct ptrace_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptrace_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(u32 action, struct utrace_engine *engine,
			      long orig_code, long *code)
{
	struct ptrace_context *ctx = FUNC1(engine);

	FUNC0(FUNC2(ctx) &&
		!FUNC4(current->signal));

	FUNC3(ctx, PTRACE_EVENT_EXIT);
	ctx->eventmsg = *code;

	return UTRACE_STOP;
}