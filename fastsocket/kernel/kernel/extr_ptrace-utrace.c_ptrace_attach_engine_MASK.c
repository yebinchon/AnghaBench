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
struct ptrace_context {int /*<<< orphan*/  resume; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int ERESTARTNOINTR ; 
 struct utrace_engine* FUNC0 (int) ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct utrace_engine*) ; 
 int UTRACE_ATTACH_CREATE ; 
 int UTRACE_ATTACH_EXCLUSIVE ; 
 int UTRACE_ATTACH_MATCH_OPS ; 
 int /*<<< orphan*/  UTRACE_RESUME ; 
 int /*<<< orphan*/  FUNC2 (struct ptrace_context*) ; 
 struct ptrace_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct utrace_engine* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  ptrace_utrace_ops ; 
 int FUNC5 (struct task_struct*) ; 
 scalar_t__ FUNC6 (int) ; 
 struct utrace_engine* FUNC7 (struct task_struct*,int,int /*<<< orphan*/ *,struct ptrace_context*) ; 

__attribute__((used)) static struct utrace_engine *
FUNC8(struct task_struct *tracee)
{
	struct utrace_engine *engine;
	struct ptrace_context *ctx;

	if (FUNC6(FUNC5(tracee))) {
		engine = FUNC4(tracee);
		if (!FUNC1(engine) || FUNC1(engine) == -EPERM)
			return engine;
	}

	ctx = FUNC3(sizeof(*ctx), GFP_KERNEL);
	if (FUNC6(!ctx))
		return FUNC0(-ENOMEM);

	ctx->resume = UTRACE_RESUME;

	engine = FUNC7(tracee, UTRACE_ATTACH_CREATE |
						UTRACE_ATTACH_EXCLUSIVE |
						UTRACE_ATTACH_MATCH_OPS,
						&ptrace_utrace_ops, ctx);
	if (FUNC6(FUNC1(engine))) {
		if (engine != FUNC0(-ESRCH) &&
		    engine != FUNC0(-ERESTARTNOINTR))
			engine = FUNC0(-EPERM);
		FUNC2(ctx);
	}

	return engine;
}