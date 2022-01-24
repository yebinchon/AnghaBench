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
struct task_struct {int dummy; } ;
struct perf_event_context {int /*<<< orphan*/  parent_ctx; int /*<<< orphan*/  lock; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; void* last_period; void* sample_period; } ;
struct TYPE_2__ {scalar_t__ freq; } ;
struct perf_event {scalar_t__ state; int /*<<< orphan*/  child_mutex; int /*<<< orphan*/  child_list; struct perf_event_context* ctx; int /*<<< orphan*/  overflow_handler_context; int /*<<< orphan*/  overflow_handler; struct hw_perf_event hw; TYPE_1__ attr; int /*<<< orphan*/  refcount; int /*<<< orphan*/  cpu; struct perf_event* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC11 (struct perf_event*) ; 
 struct perf_event* FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,struct task_struct*,struct perf_event*,struct perf_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct perf_event *
FUNC15(struct perf_event *parent_event,
	      struct task_struct *parent,
	      struct perf_event_context *parent_ctx,
	      struct task_struct *child,
	      struct perf_event *group_leader,
	      struct perf_event_context *child_ctx)
{
	struct perf_event *child_event;
	unsigned long flags;

	/*
	 * Instead of creating recursive hierarchies of events,
	 * we link inherited events back to the original parent,
	 * which has a filp for sure, which we use as the reference
	 * count:
	 */
	if (parent_event->parent)
		parent_event = parent_event->parent;

	child_event = FUNC12(&parent_event->attr,
					   parent_event->cpu,
					   child,
					   group_leader, parent_event,
				           NULL, NULL);
	if (FUNC0(child_event))
		return child_event;

	if (!FUNC3(&parent_event->refcount)) {
		FUNC4(child_event);
		return NULL;
	}

	FUNC5(child_ctx);

	/*
	 * Make the child state follow the state of the parent event,
	 * not its attr.disabled bit.  We hold the parent's mutex,
	 * so we won't race with perf_event_{en, dis}able_family.
	 */
	if (parent_event->state >= PERF_EVENT_STATE_INACTIVE)
		child_event->state = PERF_EVENT_STATE_INACTIVE;
	else
		child_event->state = PERF_EVENT_STATE_OFF;

	if (parent_event->attr.freq) {
		u64 sample_period = parent_event->hw.sample_period;
		struct hw_perf_event *hwc = &child_event->hw;

		hwc->sample_period = sample_period;
		hwc->last_period   = sample_period;

		FUNC7(&hwc->period_left, sample_period);
	}

	child_event->ctx = child_ctx;
	child_event->overflow_handler = parent_event->overflow_handler;
	child_event->overflow_handler_context
		= parent_event->overflow_handler_context;

	/*
	 * Precalculate sample_data sizes
	 */
	FUNC10(child_event);
	FUNC11(child_event);

	/*
	 * Link it up in the child's context:
	 */
	FUNC13(&child_ctx->lock, flags);
	FUNC2(child_event, child_ctx);
	FUNC14(&child_ctx->lock, flags);

	/*
	 * Link this into the parent event's child list
	 */
	FUNC1(parent_event->ctx->parent_ctx);
	FUNC8(&parent_event->child_mutex);
	FUNC6(&child_event->child_list, &parent_event->child_list);
	FUNC9(&parent_event->child_mutex);

	return child_event;
}