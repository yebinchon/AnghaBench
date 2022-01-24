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
struct net_device {unsigned int num_tx_queues; } ;
struct TYPE_6__ {scalar_t__ overlimits; scalar_t__ requeues; scalar_t__ drops; scalar_t__ backlog; scalar_t__ qlen; scalar_t__ packets; scalar_t__ bytes; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_3__ qstats; TYPE_3__ bstats; TYPE_1__ q; } ;
struct TYPE_5__ {struct Qdisc* qdisc_sleeping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 (struct net_device*,unsigned int) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct sk_buff *skb)
{
	struct net_device *dev = FUNC2(sch);
	struct Qdisc *qdisc;
	unsigned int ntx;

	sch->q.qlen = 0;
	FUNC0(&sch->bstats, 0, sizeof(sch->bstats));
	FUNC0(&sch->qstats, 0, sizeof(sch->qstats));

	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		qdisc = FUNC1(dev, ntx)->qdisc_sleeping;
		FUNC4(FUNC3(qdisc));
		sch->q.qlen		+= qdisc->q.qlen;
		sch->bstats.bytes	+= qdisc->bstats.bytes;
		sch->bstats.packets	+= qdisc->bstats.packets;
		sch->qstats.qlen	+= qdisc->qstats.qlen;
		sch->qstats.backlog	+= qdisc->qstats.backlog;
		sch->qstats.drops	+= qdisc->qstats.drops;
		sch->qstats.requeues	+= qdisc->qstats.requeues;
		sch->qstats.overlimits	+= qdisc->qstats.overlimits;
		FUNC5(FUNC3(qdisc));
	}
	return 0;
}