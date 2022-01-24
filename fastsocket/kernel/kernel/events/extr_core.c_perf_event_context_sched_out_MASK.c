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
struct task_struct {struct perf_event_context** perf_event_ctxp; } ;
struct perf_event_context {int /*<<< orphan*/  lock; struct task_struct* task; int /*<<< orphan*/  parent_ctx; } ;
struct perf_cpu_context {int /*<<< orphan*/ * task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ALL ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 struct perf_cpu_context* FUNC0 (struct perf_event_context*) ; 
 scalar_t__ FUNC1 (struct perf_event_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event_context*,struct perf_event_context*) ; 
 struct perf_event_context* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct task_struct *task, int ctxn,
					 struct task_struct *next)
{
	struct perf_event_context *ctx = task->perf_event_ctxp[ctxn];
	struct perf_event_context *next_ctx;
	struct perf_event_context *parent;
	struct perf_cpu_context *cpuctx;
	int do_switch = 1;

	if (FUNC3(!ctx))
		return;

	cpuctx = FUNC0(ctx);
	if (!cpuctx->task_ctx)
		return;

	FUNC6();
	parent = FUNC5(ctx->parent_ctx);
	next_ctx = next->perf_event_ctxp[ctxn];
	if (parent && next_ctx &&
	    FUNC5(next_ctx->parent_ctx) == parent) {
		/*
		 * Looks like the two contexts are clones, so we might be
		 * able to optimize the context switch.  We lock both
		 * contexts and check that they are clones under the
		 * lock (including re-checking that neither has been
		 * uncloned in the meantime).  It doesn't matter which
		 * order we take the locks because no other cpu could
		 * be trying to lock both of these tasks.
		 */
		FUNC8(&ctx->lock);
		FUNC9(&next_ctx->lock, SINGLE_DEPTH_NESTING);
		if (FUNC1(ctx, next_ctx)) {
			/*
			 * XXX do we need a memory barrier of sorts
			 * wrt to rcu_dereference() of perf_event_ctxp
			 */
			task->perf_event_ctxp[ctxn] = next_ctx;
			next->perf_event_ctxp[ctxn] = ctx;
			ctx->task = next;
			next_ctx->task = task;
			do_switch = 0;

			FUNC4(ctx, next_ctx);
		}
		FUNC10(&next_ctx->lock);
		FUNC10(&ctx->lock);
	}
	FUNC7();

	if (do_switch) {
		FUNC8(&ctx->lock);
		FUNC2(ctx, cpuctx, EVENT_ALL);
		cpuctx->task_ctx = NULL;
		FUNC10(&ctx->lock);
	}
}