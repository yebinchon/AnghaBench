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
struct utrace_engine {int /*<<< orphan*/ * ops; } ;
struct task_struct {int /*<<< orphan*/  exit_state; } ;
struct ptrace_context {scalar_t__ options; int /*<<< orphan*/  resume; scalar_t__ eventmsg; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EPERM ; 
 struct utrace_engine* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct utrace_engine*) ; 
 scalar_t__ PTRACE_O_DETACHED ; 
 int /*<<< orphan*/  QUIESCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTRACE_RESUME ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ptrace_context* FUNC4 (struct utrace_engine*) ; 
 struct utrace_engine* FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  ptrace_utrace_ops ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct task_struct*,struct utrace_engine*) ; 
 int /*<<< orphan*/  FUNC8 (struct utrace_engine*) ; 
 int FUNC9 (struct task_struct*,struct utrace_engine*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct utrace_engine *
FUNC10(struct task_struct *tracee)
{
	struct utrace_engine *engine;
	struct ptrace_context *ctx;
	int err = -EPERM;

	engine = FUNC5(tracee);
	if (FUNC1(engine))
		return engine;

	ctx = FUNC4(engine);
	if (FUNC6(ctx->options == PTRACE_O_DETACHED)) {
		/*
		 * Try to reuse this self-detaching engine.
		 * The only caller which can hit this case is ptrace_attach(),
		 * it holds ->cred_guard_mutex.
		 */
		ctx->options = 0;
		ctx->eventmsg = 0;

		/* make sure we don't get unwanted reports */
		err = FUNC9(tracee, engine, FUNC2(QUIESCE));
		if (!err || err == -EINPROGRESS) {
			ctx->resume = UTRACE_RESUME;
			/* synchronize with ptrace_report_signal() */
			err = FUNC7(tracee, engine);
		}

		if (!err) {
			FUNC3(engine->ops != &ptrace_utrace_ops &&
				!tracee->exit_state);
			return engine;
		}

		FUNC3(engine->ops == &ptrace_utrace_ops);
	}

	FUNC8(engine);
	return FUNC0(err);
}