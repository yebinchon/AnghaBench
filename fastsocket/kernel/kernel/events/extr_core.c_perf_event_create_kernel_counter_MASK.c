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
struct perf_event_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  generation; int /*<<< orphan*/  parent_ctx; int /*<<< orphan*/  pmu; } ;
struct perf_event_attr {int dummy; } ;
struct perf_event {int /*<<< orphan*/  mutex; int /*<<< orphan*/  generation; int /*<<< orphan*/  parent_ctx; int /*<<< orphan*/  pmu; } ;
typedef  int /*<<< orphan*/  perf_overflow_handler_t ;

/* Variables and functions */
 struct perf_event_context* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct perf_event_context*) ; 
 int FUNC2 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct perf_event_context* FUNC4 (int /*<<< orphan*/ ,struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct perf_event_context* FUNC8 (struct perf_event_attr*,int,struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event_context*,struct perf_event_context*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event_context*) ; 

struct perf_event *
FUNC11(struct perf_event_attr *attr, int cpu,
				 struct task_struct *task,
				 perf_overflow_handler_t overflow_handler,
				 void *context)
{
	struct perf_event_context *ctx;
	struct perf_event *event;
	int err;

	/*
	 * Get the target context (task or percpu):
	 */

	event = FUNC8(attr, cpu, task, NULL, NULL,
				 overflow_handler, context);
	if (FUNC1(event)) {
		err = FUNC2(event);
		goto err;
	}

	ctx = FUNC4(event->pmu, task, cpu);
	if (FUNC1(ctx)) {
		err = FUNC2(ctx);
		goto err_free;
	}

	FUNC3(ctx->parent_ctx);
	FUNC6(&ctx->mutex);
	FUNC9(ctx, event, cpu);
	++ctx->generation;
	FUNC10(ctx);
	FUNC7(&ctx->mutex);

	return event;

err_free:
	FUNC5(event);
err:
	return FUNC0(err);
}