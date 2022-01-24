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
struct TYPE_6__ {scalar_t__ qlen; } ;
struct teql_sched_data {TYPE_3__ q; } ;
struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ tx_queue_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  drops; } ;
struct TYPE_5__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct Qdisc {TYPE_1__ qstats; TYPE_2__ bstats; } ;

/* Variables and functions */
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct teql_sched_data* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, struct Qdisc* sch)
{
	struct net_device *dev = FUNC2(sch);
	struct teql_sched_data *q = FUNC4(sch);

	if (q->q.qlen < dev->tx_queue_len) {
		FUNC0(&q->q, skb);
		sch->bstats.bytes += FUNC3(skb);
		sch->bstats.packets++;
		return 0;
	}

	FUNC1(skb);
	sch->qstats.drops++;
	return NET_XMIT_DROP;
}