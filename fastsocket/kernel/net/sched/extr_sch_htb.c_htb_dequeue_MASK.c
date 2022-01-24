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
struct sk_buff {int dummy; } ;
struct htb_sched {scalar_t__ now; scalar_t__* near_ev_cache; int* row_mask; int /*<<< orphan*/  work; int /*<<< orphan*/  watchdog; int /*<<< orphan*/  direct_queue; } ;
struct TYPE_4__ {int /*<<< orphan*/  overlimits; } ;
struct TYPE_3__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ qstats; int /*<<< orphan*/  flags; TYPE_1__ q; } ;
typedef  scalar_t__ psched_time_t ;

/* Variables and functions */
 int PSCHED_TICKS_PER_SEC ; 
 int /*<<< orphan*/  TCQ_F_THROTTLED ; 
 int TC_HTB_MAXDEPTH ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 struct sk_buff* FUNC2 (struct htb_sched*,int,int) ; 
 scalar_t__ FUNC3 (struct htb_sched*,int,unsigned long) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 struct htb_sched* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct Qdisc *sch)
{
	struct sk_buff *skb = NULL;
	struct htb_sched *q = FUNC6(sch);
	int level;
	psched_time_t next_event;
	unsigned long start_at;

	/* try to dequeue direct packets as high prio (!) to minimize cpu work */
	skb = FUNC0(&q->direct_queue);
	if (skb != NULL) {
		sch->flags &= ~TCQ_F_THROTTLED;
		sch->q.qlen--;
		return skb;
	}

	if (!sch->q.qlen)
		goto fin;
	q->now = FUNC5();
	start_at = jiffies;

	next_event = q->now + 5 * PSCHED_TICKS_PER_SEC;

	for (level = 0; level < TC_HTB_MAXDEPTH; level++) {
		/* common case optimization - skip event handler quickly */
		int m;
		psched_time_t event;

		if (q->now >= q->near_ev_cache[level]) {
			event = FUNC3(q, level, start_at);
			if (!event)
				event = q->now + PSCHED_TICKS_PER_SEC;
			q->near_ev_cache[level] = event;
		} else
			event = q->near_ev_cache[level];

		if (next_event > event)
			next_event = event;

		m = ~q->row_mask[level];
		while (m != (int)(-1)) {
			int prio = FUNC1(m);
			m |= 1 << prio;
			skb = FUNC2(q, prio, level);
			if (FUNC4(skb != NULL)) {
				sch->q.qlen--;
				sch->flags &= ~TCQ_F_THROTTLED;
				goto fin;
			}
		}
	}
	sch->qstats.overlimits++;
	if (FUNC4(next_event > q->now))
		FUNC7(&q->watchdog, next_event);
	else
		FUNC8(&q->work);
fin:
	return skb;
}