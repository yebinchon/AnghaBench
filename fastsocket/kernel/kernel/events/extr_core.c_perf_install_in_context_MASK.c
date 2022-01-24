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
struct perf_event_context {int /*<<< orphan*/  lock; scalar_t__ is_active; int /*<<< orphan*/  mutex; struct task_struct* task; } ;
struct perf_event {int cpu; struct perf_event_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  __perf_install_in_context ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ,struct perf_event*) ; 

__attribute__((used)) static void
FUNC6(struct perf_event_context *ctx,
			struct perf_event *event,
			int cpu)
{
	struct task_struct *task = ctx->task;

	FUNC2(&ctx->mutex);

	event->ctx = ctx;
	if (event->cpu != -1)
		event->cpu = cpu;

	if (!task) {
		/*
		 * Per cpu events are installed via an smp call and
		 * the install is always successful.
		 */
		FUNC1(cpu, __perf_install_in_context, event);
		return;
	}

retry:
	if (!FUNC5(task, __perf_install_in_context, event))
		return;

	FUNC3(&ctx->lock);
	/*
	 * If we failed to find a running task, but find the context active now
	 * that we've acquired the ctx->lock, retry.
	 */
	if (ctx->is_active) {
		FUNC4(&ctx->lock);
		goto retry;
	}

	/*
	 * Since the task isn't running, its safe to add the event, us holding
	 * the ctx->lock ensures the task won't get scheduled in.
	 */
	FUNC0(event, ctx);
	FUNC4(&ctx->lock);
}