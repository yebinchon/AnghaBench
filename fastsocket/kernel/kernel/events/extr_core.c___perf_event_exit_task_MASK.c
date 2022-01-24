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
struct perf_event_context {int /*<<< orphan*/  lock; } ;
struct perf_event {scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,struct task_struct*) ; 

__attribute__((used)) static void
FUNC6(struct perf_event *child_event,
			 struct perf_event_context *child_ctx,
			 struct task_struct *child)
{
	if (child_event->parent) {
		FUNC3(&child_ctx->lock);
		FUNC1(child_event);
		FUNC4(&child_ctx->lock);
	}

	FUNC2(child_event);

	/*
	 * It can happen that the parent exits first, and has events
	 * that are still around due to the child reference. These
	 * events need to be zapped.
	 */
	if (child_event->parent) {
		FUNC5(child_event, child);
		FUNC0(child_event);
	}
}