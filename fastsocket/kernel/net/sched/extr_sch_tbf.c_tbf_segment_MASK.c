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
struct tbf_sched_data {scalar_t__ max_size; int /*<<< orphan*/  qdisc; } ;
struct sk_buff {scalar_t__ len; struct sk_buff* next; } ;
struct TYPE_5__ {int qlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  drops; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;
struct TYPE_6__ {scalar_t__ pkt_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NETIF_F_GSO_MASK ; 
 int NET_XMIT_DROP ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tbf_sched_data* FUNC6 (struct Qdisc*) ; 
 int FUNC7 (struct sk_buff*,struct Qdisc*) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*,int) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct Qdisc *sch)
{
	struct tbf_sched_data *q = FUNC6(sch);
	struct sk_buff *segs, *nskb;
	int features = FUNC4(skb);
	int ret, nb;

	segs = FUNC10(skb, features & ~NETIF_F_GSO_MASK);

	if (FUNC0(segs))
		return FUNC7(skb, sch);

	nb = 0;
	while (segs) {
		nskb = segs->next;
		segs->next = NULL;
		if (FUNC2(segs->len <= q->max_size)) {
			FUNC8(segs)->pkt_len = segs->len;
			ret = FUNC5(segs, q->qdisc);
		} else {
			ret = FUNC7(skb, sch);
		}
		if (ret != NET_XMIT_SUCCESS) {
			if (FUNC3(ret))
				sch->qstats.drops++;
		} else {
			nb++;
		}
		segs = nskb;
	}
	sch->q.qlen += nb;
	if (nb > 1)
		FUNC9(sch, 1 - nb);
	FUNC1(skb);
	return nb > 0 ? NET_XMIT_SUCCESS : NET_XMIT_DROP;
}