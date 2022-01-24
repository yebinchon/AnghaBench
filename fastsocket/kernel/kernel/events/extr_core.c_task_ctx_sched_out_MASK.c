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
struct perf_event_context {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_ALL ; 
 scalar_t__ FUNC0 (int) ; 
 struct perf_cpu_context* FUNC1 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_context*,struct perf_cpu_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event_context *ctx)
{
	struct perf_cpu_context *cpuctx = FUNC1(ctx);

	if (!cpuctx->task_ctx)
		return;

	if (FUNC0(ctx != cpuctx->task_ctx))
		return;

	FUNC2(ctx, cpuctx, EVENT_ALL);
	cpuctx->task_ctx = NULL;
}