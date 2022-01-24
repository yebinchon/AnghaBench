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
struct task_struct {int dummy; } ;
struct perf_event_context {int is_active; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  nr_events; } ;
struct perf_cpu_context {int dummy; } ;
typedef  enum event_type_t { ____Placeholder_event_type_t } event_type_t ;

/* Variables and functions */
 int EVENT_FLEXIBLE ; 
 int EVENT_PINNED ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event_context*,struct perf_cpu_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event_context*,struct perf_cpu_context*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct perf_event_context *ctx,
	     struct perf_cpu_context *cpuctx,
	     enum event_type_t event_type,
	     struct task_struct *task)
{
	u64 now;
	int is_active = ctx->is_active;

	ctx->is_active |= event_type;
	if (FUNC2(!ctx->nr_events))
		return;

	now = FUNC4();
	ctx->timestamp = now;
	FUNC3(task, ctx);
	/*
	 * First go through the list and put on any pinned groups
	 * in order to give them the best chance of going on.
	 */
	if (!(is_active & EVENT_PINNED) && (event_type & EVENT_PINNED))
		FUNC1(ctx, cpuctx);

	/* Then walk through the lower prio flexible groups */
	if (!(is_active & EVENT_FLEXIBLE) && (event_type & EVENT_FLEXIBLE))
		FUNC0(ctx, cpuctx);
}