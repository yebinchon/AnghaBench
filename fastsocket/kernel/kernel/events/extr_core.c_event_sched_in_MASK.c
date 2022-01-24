#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct perf_event_context {int /*<<< orphan*/  nr_freq; int /*<<< orphan*/  nr_active; } ;
struct TYPE_6__ {scalar_t__ exclusive; scalar_t__ sample_freq; scalar_t__ freq; } ;
struct TYPE_4__ {scalar_t__ interrupts; } ;
struct perf_event {scalar_t__ state; int oncpu; TYPE_3__ attr; scalar_t__ tstamp_stopped; int /*<<< orphan*/  tstamp_running; TYPE_2__* pmu; TYPE_1__ hw; } ;
struct perf_cpu_context {int exclusive; int /*<<< orphan*/  active_oncpu; } ;
struct TYPE_5__ {scalar_t__ (* add ) (struct perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ MAX_INTERRUPTS ; 
 int /*<<< orphan*/  PERF_EF_START ; 
 scalar_t__ PERF_EVENT_STATE_ACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,struct perf_event_context*,scalar_t__) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct perf_event*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct perf_event *event,
		 struct perf_cpu_context *cpuctx,
		 struct perf_event_context *ctx)
{
	u64 tstamp = FUNC1(event);

	if (event->state <= PERF_EVENT_STATE_OFF)
		return 0;

	event->state = PERF_EVENT_STATE_ACTIVE;
	event->oncpu = FUNC4();

	/*
	 * Unthrottle events, since we scheduled we might have missed several
	 * ticks already, also for a heavily scheduling task there is little
	 * guarantee it'll get a tick in a timely manner.
	 */
	if (FUNC7(event->hw.interrupts == MAX_INTERRUPTS)) {
		FUNC2(event, 1);
		event->hw.interrupts = 0;
	}

	/*
	 * The new state must be visible before we turn it on in the hardware:
	 */
	FUNC5();

	if (event->pmu->add(event, PERF_EF_START)) {
		event->state = PERF_EVENT_STATE_INACTIVE;
		event->oncpu = -1;
		return -EAGAIN;
	}

	event->tstamp_running += tstamp - event->tstamp_stopped;

	FUNC3(event, ctx, tstamp);

	if (!FUNC0(event))
		cpuctx->active_oncpu++;
	ctx->nr_active++;
	if (event->attr.freq && event->attr.sample_freq)
		ctx->nr_freq++;

	if (event->attr.exclusive)
		cpuctx->exclusive = 1;

	return 0;
}