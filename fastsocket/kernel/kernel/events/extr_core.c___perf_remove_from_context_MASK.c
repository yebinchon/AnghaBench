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
struct perf_event_context {int /*<<< orphan*/  lock; scalar_t__ is_active; int /*<<< orphan*/  nr_events; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 struct perf_cpu_context* FUNC0 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *info)
{
	struct perf_event *event = info;
	struct perf_event_context *ctx = event->ctx;
	struct perf_cpu_context *cpuctx = FUNC0(ctx);

	FUNC3(&ctx->lock);
	FUNC1(event, cpuctx, ctx);
	FUNC2(event, ctx);
	if (!ctx->nr_events && cpuctx->task_ctx == ctx) {
		ctx->is_active = 0;
		cpuctx->task_ctx = NULL;
	}
	FUNC4(&ctx->lock);

	return 0;
}