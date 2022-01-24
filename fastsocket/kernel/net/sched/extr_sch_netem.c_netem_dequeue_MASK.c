#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tv64; } ;
struct sk_buff {TYPE_2__ tstamp; int /*<<< orphan*/  tc_verd; } ;
struct netem_skb_cb {scalar_t__ time_to_send; } ;
struct netem_sched_data {int /*<<< orphan*/  watchdog; TYPE_4__* qdisc; } ;
struct TYPE_8__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {int flags; TYPE_3__ q; } ;
typedef  scalar_t__ psched_time_t ;
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_6__ {struct sk_buff* (* peek ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int AT_INGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TCQ_F_THROTTLED ; 
 struct netem_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct sk_buff*) ; 
 scalar_t__ FUNC3 () ; 
 struct sk_buff* FUNC4 (TYPE_4__*) ; 
 struct netem_sched_data* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct sk_buff* FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct Qdisc *sch)
{
	struct netem_sched_data *q = FUNC5(sch);
	struct sk_buff *skb;

	if (sch->flags & TCQ_F_THROTTLED)
		return NULL;

	skb = q->qdisc->ops->peek(q->qdisc);
	if (skb) {
		const struct netem_skb_cb *cb = FUNC1(skb);
		psched_time_t now = FUNC3();

		/* if more time remaining? */
		if (cb->time_to_send <= now) {
			skb = FUNC4(q->qdisc);
			if (FUNC8(!skb))
				return NULL;

#ifdef CONFIG_NET_CLS_ACT
			/*
			 * If it's at ingress let's pretend the delay is
			 * from the network (tstamp will be updated).
			 */
			if (G_TC_FROM(skb->tc_verd) & AT_INGRESS)
				skb->tstamp.tv64 = 0;
#endif
			FUNC2("netem_dequeue: return skb=%p\n", skb);
			sch->q.qlen--;
			return skb;
		}

		FUNC6(&q->watchdog, cb->time_to_send);
	}

	return NULL;
}