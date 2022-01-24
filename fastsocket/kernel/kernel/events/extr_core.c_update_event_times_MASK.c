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
typedef  void* u64 ;
struct perf_event_context {void* time; scalar_t__ is_active; } ;
struct perf_event {scalar_t__ state; void* tstamp_enabled; void* tstamp_running; void* total_time_running; void* tstamp_stopped; void* total_time_enabled; TYPE_1__* group_leader; struct perf_event_context* ctx; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 void* FUNC1 (struct perf_event*) ; 
 void* FUNC2 (struct perf_event*) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event)
{
	struct perf_event_context *ctx = event->ctx;
	u64 run_end;

	if (event->state < PERF_EVENT_STATE_INACTIVE ||
	    event->group_leader->state < PERF_EVENT_STATE_INACTIVE)
		return;
	/*
	 * in cgroup mode, time_enabled represents
	 * the time the event was enabled AND active
	 * tasks were in the monitored cgroup. This is
	 * independent of the activity of the context as
	 * there may be a mix of cgroup and non-cgroup events.
	 *
	 * That is why we treat cgroup events differently
	 * here.
	 */
	if (FUNC0(event))
		run_end = FUNC1(event);
	else if (ctx->is_active)
		run_end = ctx->time;
	else
		run_end = event->tstamp_stopped;

	event->total_time_enabled = run_end - event->tstamp_enabled;

	if (event->state == PERF_EVENT_STATE_INACTIVE)
		run_end = event->tstamp_stopped;
	else
		run_end = FUNC2(event);

	event->total_time_running = run_end - event->tstamp_running;

}