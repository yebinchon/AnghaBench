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
struct perf_event_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  is_active; } ;
struct TYPE_2__ {scalar_t__ pinned; } ;
struct perf_event {scalar_t__ state; TYPE_1__ attr; struct perf_event* group_leader; struct perf_event_context* ctx; } ;
struct perf_cpu_context {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_ERROR ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ FUNC0 (int) ; 
 struct perf_cpu_context* FUNC1 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int FUNC4 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,struct perf_cpu_context*,int) ; 
 int FUNC6 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ; 
 scalar_t__ FUNC8 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC14 (struct perf_event*) ; 

__attribute__((used)) static int FUNC15(void *info)
{
	struct perf_event *event = info;
	struct perf_event_context *ctx = event->ctx;
	struct perf_event *leader = event->group_leader;
	struct perf_cpu_context *cpuctx = FUNC1(ctx);
	int err;

	if (FUNC0(!ctx->is_active))
		return -EINVAL;

	FUNC11(&ctx->lock);
	FUNC13(ctx);

	if (event->state >= PERF_EVENT_STATE_INACTIVE)
		goto unlock;

	/*
	 * set current task's cgroup time reference point
	 */
	FUNC10(current, ctx);

	FUNC2(event);

	if (!FUNC3(event)) {
		if (FUNC8(event))
			FUNC9(event);
		goto unlock;
	}

	/*
	 * If the event is in a group and isn't the group leader,
	 * then don't put it on unless the group is on.
	 */
	if (leader != event && leader->state != PERF_EVENT_STATE_ACTIVE)
		goto unlock;

	if (!FUNC5(event, cpuctx, 1)) {
		err = -EEXIST;
	} else {
		if (event == leader)
			err = FUNC6(event, cpuctx, ctx);
		else
			err = FUNC4(event, cpuctx, ctx);
	}

	if (err) {
		/*
		 * If this event can't go on and it's part of a
		 * group, then the whole group has to come off.
		 */
		if (leader != event)
			FUNC7(leader, cpuctx, ctx);
		if (leader->attr.pinned) {
			FUNC14(leader);
			leader->state = PERF_EVENT_STATE_ERROR;
		}
	}

unlock:
	FUNC12(&ctx->lock);

	return 0;
}