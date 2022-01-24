#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tc_mqprio_qopt {unsigned int num_tc; int /*<<< orphan*/ * offset; int /*<<< orphan*/ * count; int /*<<< orphan*/  prio_tc_map; int /*<<< orphan*/  member_0; } ;
struct sk_buff {int len; } ;
struct netdev_qos_info {TYPE_2__* tc_to_txq; int /*<<< orphan*/  prio_tc_map; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct TYPE_10__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ qlen; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_5__ qstats; TYPE_5__ bstats; TYPE_1__ q; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_9__ {struct netdev_qos_info qos_data; } ;
struct TYPE_8__ {struct Qdisc* qdisc; } ;
struct TYPE_7__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_mqprio_qopt*) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (struct net_device*) ; 
 TYPE_3__* FUNC5 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char*) ; 
 struct net_device* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 unsigned char* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct Qdisc *sch, struct sk_buff *skb)
{
	struct net_device *dev = FUNC7(sch);
	struct netdev_qos_info *qos = &FUNC3(dev)->qos_data;
	unsigned char *b = FUNC9(skb);
	struct tc_mqprio_qopt opt = { 0 };
	struct Qdisc *qdisc;
	unsigned int i;

	sch->q.qlen = 0;
	FUNC2(&sch->bstats, 0, sizeof(sch->bstats));
	FUNC2(&sch->qstats, 0, sizeof(sch->qstats));

	for (i = 0; i < dev->num_tx_queues; i++) {
		qdisc = FUNC5(dev, i)->qdisc;
		FUNC10(FUNC8(qdisc));
		sch->q.qlen		+= qdisc->q.qlen;
		sch->bstats.bytes	+= qdisc->bstats.bytes;
		sch->bstats.packets	+= qdisc->bstats.packets;
		sch->qstats.qlen	+= qdisc->qstats.qlen;
		sch->qstats.backlog	+= qdisc->qstats.backlog;
		sch->qstats.drops	+= qdisc->qstats.drops;
		sch->qstats.requeues	+= qdisc->qstats.requeues;
		sch->qstats.overlimits	+= qdisc->qstats.overlimits;
		FUNC11(FUNC8(qdisc));
	}

	opt.num_tc = FUNC4(dev);
	FUNC1(opt.prio_tc_map, qos->prio_tc_map, sizeof(opt.prio_tc_map));

	for (i = 0; i < FUNC4(dev); i++) {
		opt.count[i] = qos->tc_to_txq[i].count;
		opt.offset[i] = qos->tc_to_txq[i].offset;
	}

	FUNC0(skb, TCA_OPTIONS, sizeof(opt), &opt);

	return skb->len;
nla_put_failure:
	FUNC6(skb, b);
	return -1;
}