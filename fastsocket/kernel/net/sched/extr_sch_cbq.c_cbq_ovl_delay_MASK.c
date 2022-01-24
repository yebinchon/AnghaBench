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
struct cbq_sched_data {int now; int pmask; int wd_expires; int /*<<< orphan*/  delay_timer; } ;
struct TYPE_3__ {int /*<<< orphan*/  overactions; } ;
struct cbq_class {int undertime; int delayed; int avgidle; int ewma_log; int minidle; int penalized; int cpriority; TYPE_1__ xstats; scalar_t__ penalty; scalar_t__ offtime; int /*<<< orphan*/  qdisc; } ;
typedef  int psched_time_t ;
typedef  int psched_tdiff_t ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TC_CBQ_MAXPRIO ; 
 int /*<<< orphan*/  __QDISC_STATE_DEACTIVATED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct cbq_sched_data* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct cbq_class *cl)
{
	struct cbq_sched_data *q = FUNC9(cl->qdisc);
	psched_tdiff_t delay = cl->undertime - q->now;

	if (FUNC11(__QDISC_STATE_DEACTIVATED,
		     &FUNC10(cl->qdisc)->state))
		return;

	if (!cl->delayed) {
		psched_time_t sched = q->now;
		ktime_t expires;

		delay += cl->offtime;
		if (cl->avgidle < 0)
			delay -= (-cl->avgidle) - ((-cl->avgidle) >> cl->ewma_log);
		if (cl->avgidle < cl->minidle)
			cl->avgidle = cl->minidle;
		cl->undertime = q->now + delay;

		if (delay > 0) {
			sched += delay + cl->penalty;
			cl->penalized = sched;
			cl->cpriority = TC_CBQ_MAXPRIO;
			q->pmask |= (1<<TC_CBQ_MAXPRIO);

			expires = FUNC6(0, 0);
			expires = FUNC5(expires, FUNC0(sched));
			if (FUNC4(&q->delay_timer) &&
			    FUNC8(FUNC7(
					FUNC1(&q->delay_timer),
					expires)) > 0)
				FUNC3(&q->delay_timer, expires);
			FUNC2(&q->delay_timer);
			cl->delayed = 1;
			cl->xstats.overactions++;
			return;
		}
		delay = 1;
	}
	if (q->wd_expires == 0 || q->wd_expires > delay)
		q->wd_expires = delay;
}