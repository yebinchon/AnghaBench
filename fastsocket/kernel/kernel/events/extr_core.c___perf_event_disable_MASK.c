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
struct perf_event_context {int /*<<< orphan*/  lock; scalar_t__ task; } ;
struct perf_event {scalar_t__ state; struct perf_event* group_leader; struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_OFF ; 
 struct perf_cpu_context* FUNC0 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 

__attribute__((used)) static int FUNC8(void *info)
{
	struct perf_event *event = info;
	struct perf_event_context *ctx = event->ctx;
	struct perf_cpu_context *cpuctx = FUNC0(ctx);

	/*
	 * If this is a per-task event, need to check whether this
	 * event's task is the current task on this cpu.
	 *
	 * Can trigger due to concurrent perf_event_context_sched_out()
	 * flipping contexts around.
	 */
	if (ctx->task && cpuctx->task_ctx != ctx)
		return -EINVAL;

	FUNC3(&ctx->lock);

	/*
	 * If the event is on, turn it off.
	 * If it is in error state, leave it in error state.
	 */
	if (event->state >= PERF_EVENT_STATE_INACTIVE) {
		FUNC6(ctx);
		FUNC5(event);
		FUNC7(event);
		if (event == event->group_leader)
			FUNC2(event, cpuctx, ctx);
		else
			FUNC1(event, cpuctx, ctx);
		event->state = PERF_EVENT_STATE_OFF;
	}

	FUNC4(&ctx->lock);

	return 0;
}