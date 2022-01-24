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
struct perf_event_context {int /*<<< orphan*/  lock; struct task_struct* task; } ;
struct perf_event {scalar_t__ state; int /*<<< orphan*/  cpu; struct perf_event_context* ctx; } ;

/* Variables and functions */
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_OFF ; 
 int /*<<< orphan*/  __perf_event_disable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 

void FUNC5(struct perf_event *event)
{
	struct perf_event_context *ctx = event->ctx;
	struct task_struct *task = ctx->task;

	if (!task) {
		/*
		 * Disable the event on the cpu that it's on
		 */
		FUNC0(event->cpu, __perf_event_disable, event);
		return;
	}

retry:
	if (!FUNC3(task, __perf_event_disable, event))
		return;

	FUNC1(&ctx->lock);
	/*
	 * If the event is still active, we need to retry the cross-call.
	 */
	if (event->state == PERF_EVENT_STATE_ACTIVE) {
		FUNC2(&ctx->lock);
		/*
		 * Reload the task pointer, it might have been changed by
		 * a concurrent perf_event_context_sched_out().
		 */
		task = ctx->task;
		goto retry;
	}

	/*
	 * Since we have the lock this context can't be scheduled
	 * in, so we can change the state safely.
	 */
	if (event->state == PERF_EVENT_STATE_INACTIVE) {
		FUNC4(event);
		event->state = PERF_EVENT_STATE_OFF;
	}
	FUNC2(&ctx->lock);
}