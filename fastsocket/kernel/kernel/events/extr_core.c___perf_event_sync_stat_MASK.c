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
struct TYPE_3__ {int /*<<< orphan*/  inherit_stat; } ;
struct perf_event {int state; int /*<<< orphan*/  total_time_running; int /*<<< orphan*/  total_time_enabled; int /*<<< orphan*/  count; TYPE_2__* pmu; TYPE_1__ attr; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* read ) (struct perf_event*) ;} ;

/* Variables and functions */
#define  PERF_EVENT_STATE_ACTIVE 129 
#define  PERF_EVENT_STATE_INACTIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event,
				     struct perf_event *next_event)
{
	u64 value;

	if (!event->attr.inherit_stat)
		return;

	/*
	 * Update the event value, we cannot use perf_event_read()
	 * because we're in the middle of a context switch and have IRQs
	 * disabled, which upsets smp_call_function_single(), however
	 * we know the event must be on the current CPU, therefore we
	 * don't need to use it.
	 */
	switch (event->state) {
	case PERF_EVENT_STATE_ACTIVE:
		event->pmu->read(event);
		/* fall-through */

	case PERF_EVENT_STATE_INACTIVE:
		FUNC6(event);
		break;

	default:
		break;
	}

	/*
	 * In order to keep per-task stats reliable we need to flip the event
	 * values when we flip the contexts.
	 */
	value = FUNC0(&next_event->count);
	value = FUNC2(&event->count, value);
	FUNC1(&next_event->count, value);

	FUNC5(event->total_time_enabled, next_event->total_time_enabled);
	FUNC5(event->total_time_running, next_event->total_time_running);

	/*
	 * Since we swizzled the values, update the user visible data too.
	 */
	FUNC3(event);
	FUNC3(next_event);
}