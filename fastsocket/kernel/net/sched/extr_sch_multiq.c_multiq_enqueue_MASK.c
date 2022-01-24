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
struct TYPE_6__ {int /*<<< orphan*/  drops; } ;
struct TYPE_5__ {int /*<<< orphan*/  qlen; } ;
struct TYPE_4__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_2__ q; TYPE_1__ bstats; } ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 int __NET_XMIT_BYPASS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct Qdisc* FUNC1 (struct sk_buff*,struct Qdisc*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct sk_buff*,struct Qdisc*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, struct Qdisc *sch)
{
	struct Qdisc *qdisc;
	int ret;

	qdisc = FUNC1(skb, sch, &ret);
#ifdef CONFIG_NET_CLS_ACT
	if (qdisc == NULL) {

		if (ret & __NET_XMIT_BYPASS)
			sch->qstats.drops++;
		kfree_skb(skb);
		return ret;
	}
#endif

	ret = FUNC3(skb, qdisc);
	if (ret == NET_XMIT_SUCCESS) {
		sch->bstats.bytes += FUNC4(skb);
		sch->bstats.packets++;
		sch->q.qlen++;
		return NET_XMIT_SUCCESS;
	}
	if (FUNC2(ret))
		sch->qstats.drops++;
	return ret;
}