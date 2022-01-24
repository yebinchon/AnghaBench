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
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ undertime; } ;
struct cbq_sched_data {scalar_t__ now_rt; scalar_t__ wd_expires; scalar_t__ toplevel; int /*<<< orphan*/  watchdog; TYPE_3__ link; int /*<<< orphan*/  now; int /*<<< orphan*/  tx_len; scalar_t__ tx_class; } ;
struct TYPE_5__ {int /*<<< orphan*/  overlimits; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ qstats; TYPE_1__ q; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ psched_time_t ;
typedef  scalar_t__ psched_tdiff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PSCHED_PASTPERFECT ; 
 int /*<<< orphan*/  TCQ_F_THROTTLED ; 
 scalar_t__ TC_CBQ_MAXLEVEL ; 
 struct sk_buff* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct cbq_sched_data*) ; 
 scalar_t__ FUNC3 () ; 
 struct cbq_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *
FUNC6(struct Qdisc *sch)
{
	struct sk_buff *skb;
	struct cbq_sched_data *q = FUNC4(sch);
	psched_time_t now;
	psched_tdiff_t incr;

	now = FUNC3();
	incr = now - q->now_rt;

	if (q->tx_class) {
		psched_tdiff_t incr2;
		/* Time integrator. We calculate EOS time
		   by adding expected packet transmission time.
		   If real time is greater, we warp artificial clock,
		   so that:

		   cbq_time = max(real_time, work);
		 */
		incr2 = FUNC0(&q->link, q->tx_len);
		q->now += incr2;
		FUNC2(q);
		if ((incr -= incr2) < 0)
			incr = 0;
	}
	q->now += incr;
	q->now_rt = now;

	for (;;) {
		q->wd_expires = 0;

		skb = FUNC1(sch);
		if (skb) {
			sch->q.qlen--;
			sch->flags &= ~TCQ_F_THROTTLED;
			return skb;
		}

		/* All the classes are overlimit.

		   It is possible, if:

		   1. Scheduler is empty.
		   2. Toplevel cutoff inhibited borrowing.
		   3. Root class is overlimit.

		   Reset 2d and 3d conditions and retry.

		   Note, that NS and cbq-2.0 are buggy, peeking
		   an arbitrary class is appropriate for ancestor-only
		   sharing, but not for toplevel algorithm.

		   Our version is better, but slower, because it requires
		   two passes, but it is unavoidable with top-level sharing.
		*/

		if (q->toplevel == TC_CBQ_MAXLEVEL &&
		    q->link.undertime == PSCHED_PASTPERFECT)
			break;

		q->toplevel = TC_CBQ_MAXLEVEL;
		q->link.undertime = PSCHED_PASTPERFECT;
	}

	/* No packets in scheduler or nobody wants to give them to us :-(
	   Sigh... start watchdog timer in the last case. */

	if (sch->q.qlen) {
		sch->qstats.overlimits++;
		if (q->wd_expires)
			FUNC5(&q->watchdog,
						now + q->wd_expires);
	}
	return NULL;
}