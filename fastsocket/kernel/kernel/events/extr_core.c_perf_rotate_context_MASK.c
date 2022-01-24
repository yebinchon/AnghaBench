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
struct perf_event_context {scalar_t__ nr_events; scalar_t__ nr_active; int /*<<< orphan*/  pmu; } ;
struct perf_cpu_context {int /*<<< orphan*/  rotation_list; struct perf_event_context* task_ctx; struct perf_event_context ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_FLEXIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_cpu_context*,struct perf_event_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event_context*) ; 

__attribute__((used)) static void FUNC9(struct perf_cpu_context *cpuctx)
{
	struct perf_event_context *ctx = NULL;
	int rotate = 0, remove = 1;

	if (cpuctx->ctx.nr_events) {
		remove = 0;
		if (cpuctx->ctx.nr_events != cpuctx->ctx.nr_active)
			rotate = 1;
	}

	ctx = cpuctx->task_ctx;
	if (ctx && ctx->nr_events) {
		remove = 0;
		if (ctx->nr_events != ctx->nr_active)
			rotate = 1;
	}

	if (!rotate)
		goto done;

	FUNC3(cpuctx, cpuctx->task_ctx);
	FUNC6(cpuctx->ctx.pmu);

	FUNC0(cpuctx, EVENT_FLEXIBLE);
	if (ctx)
		FUNC1(ctx, cpuctx, EVENT_FLEXIBLE);

	FUNC8(&cpuctx->ctx);
	if (ctx)
		FUNC8(ctx);

	FUNC5(cpuctx, ctx, current);

	FUNC7(cpuctx->ctx.pmu);
	FUNC4(cpuctx, cpuctx->task_ctx);
done:
	if (remove)
		FUNC2(&cpuctx->rotation_list);
}