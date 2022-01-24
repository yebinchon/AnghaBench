#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct task_struct {int dummy; } ;
struct TYPE_4__ {scalar_t__ inherit_stat; } ;
struct perf_event {int /*<<< orphan*/  child_mutex; int /*<<< orphan*/  child_list; TYPE_1__* ctx; int /*<<< orphan*/  child_total_time_running; int /*<<< orphan*/  total_time_running; int /*<<< orphan*/  child_total_time_enabled; int /*<<< orphan*/  total_time_enabled; int /*<<< orphan*/  child_count; TYPE_2__ attr; struct perf_event* parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 

__attribute__((used)) static void FUNC8(struct perf_event *child_event,
			       struct task_struct *child)
{
	struct perf_event *parent_event = child_event->parent;
	u64 child_val;

	if (child_event->attr.inherit_stat)
		FUNC6(child_event, child);

	child_val = FUNC5(child_event);

	/*
	 * Add back the child's count to the parent's count:
	 */
	FUNC1(child_val, &parent_event->child_count);
	FUNC1(child_event->total_time_enabled,
		     &parent_event->child_total_time_enabled);
	FUNC1(child_event->total_time_running,
		     &parent_event->child_total_time_running);

	/*
	 * Remove this event from the parent's list
	 */
	FUNC0(parent_event->ctx->parent_ctx);
	FUNC3(&parent_event->child_mutex);
	FUNC2(&child_event->child_list);
	FUNC4(&parent_event->child_mutex);

	/*
	 * Release the parent event, if this was the last
	 * reference to it.
	 */
	FUNC7(parent_event);
}