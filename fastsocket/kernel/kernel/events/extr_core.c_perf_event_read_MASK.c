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
typedef  int /*<<< orphan*/  u64 ;
struct perf_event_context {int /*<<< orphan*/  lock; scalar_t__ is_active; } ;
struct perf_event {scalar_t__ state; struct perf_event_context* ctx; int /*<<< orphan*/  oncpu; } ;

/* Variables and functions */
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 int /*<<< orphan*/  __perf_event_read ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 

__attribute__((used)) static u64 FUNC7(struct perf_event *event)
{
	/*
	 * If event is enabled and currently active on a CPU, update the
	 * value in the event structure:
	 */
	if (event->state == PERF_EVENT_STATE_ACTIVE) {
		FUNC1(event->oncpu,
					 __perf_event_read, event, 1);
	} else if (event->state == PERF_EVENT_STATE_INACTIVE) {
		struct perf_event_context *ctx = event->ctx;
		unsigned long flags;

		FUNC2(&ctx->lock, flags);
		/*
		 * may read while context is not active
		 * (e.g., thread is blocked), in that case
		 * we cannot update context time
		 */
		if (ctx->is_active) {
			FUNC5(ctx);
			FUNC4(event);
		}
		FUNC6(event);
		FUNC3(&ctx->lock, flags);
	}

	return FUNC0(event);
}