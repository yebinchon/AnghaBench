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
struct task_struct {int dummy; } ;
struct perf_event_context {int /*<<< orphan*/  pmu; scalar_t__ nr_events; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_FLEXIBLE ; 
 struct perf_cpu_context* FUNC0 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_cpu_context*,struct perf_event_context*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct perf_event_context *ctx,
					struct task_struct *task)
{
	struct perf_cpu_context *cpuctx;

	cpuctx = FUNC0(ctx);
	if (cpuctx->task_ctx == ctx)
		return;

	FUNC2(cpuctx, ctx);
	FUNC5(ctx->pmu);
	/*
	 * We want to keep the following priority order:
	 * cpu pinned (that don't need to move), task pinned,
	 * cpu flexible, task flexible.
	 */
	FUNC1(cpuctx, EVENT_FLEXIBLE);

	if (ctx->nr_events)
		cpuctx->task_ctx = ctx;

	FUNC4(cpuctx, cpuctx->task_ctx, task);

	FUNC6(ctx->pmu);
	FUNC3(cpuctx, ctx);

	/*
	 * Since these rotations are per-cpu, we need to ensure the
	 * cpu-context we got scheduled on is actually rotating.
	 */
	FUNC7(ctx->pmu);
}