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
struct task_struct {int dummy; } ;
struct perf_event_context {struct task_struct* task; int /*<<< orphan*/  lock; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmu; } ;
struct perf_cpu_context {TYPE_1__ ctx; struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ALL ; 
 struct perf_cpu_context* FUNC0 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_cpu_context*,struct perf_event_context*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC11 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC12 (struct perf_event_context*) ; 

__attribute__((used)) static int  FUNC13(void *info)
{
	struct perf_event *event = info;
	struct perf_event_context *ctx = event->ctx;
	struct perf_cpu_context *cpuctx = FUNC0(ctx);
	struct perf_event_context *task_ctx = cpuctx->task_ctx;
	struct task_struct *task = current;

	FUNC3(cpuctx, task_ctx);
	FUNC6(cpuctx->ctx.pmu);

	/*
	 * If there was an active task_ctx schedule it out.
	 */
	if (task_ctx)
		FUNC10(task_ctx);

	/*
	 * If the context we're installing events in is not the
	 * active task_ctx, flip them.
	 */
	if (ctx->task && task_ctx != ctx) {
		if (task_ctx)
			FUNC9(&task_ctx->lock);
		FUNC8(&ctx->lock);
		task_ctx = ctx;
	}

	if (task_ctx) {
		cpuctx->task_ctx = task_ctx;
		task = task_ctx->task;
	}

	FUNC2(cpuctx, EVENT_ALL);

	FUNC12(ctx);
	/*
	 * update cgrp time only if current cgrp
	 * matches event->cgrp. Must be done before
	 * calling add_event_to_ctx()
	 */
	FUNC11(event);

	FUNC1(event, ctx);

	/*
	 * Schedule everything back in
	 */
	FUNC5(cpuctx, task_ctx, task);

	FUNC7(cpuctx->ctx.pmu);
	FUNC4(cpuctx, task_ctx);

	return 0;
}