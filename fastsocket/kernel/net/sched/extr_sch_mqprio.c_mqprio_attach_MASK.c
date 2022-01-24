#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {unsigned int num_tx_queues; } ;
struct mqprio_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc**) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 struct net_device* FUNC3 (struct Qdisc*) ; 
 struct mqprio_sched* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch)
{
	struct net_device *dev = FUNC3(sch);
	struct mqprio_sched *priv = FUNC4(sch);
	struct Qdisc *qdisc;
	unsigned int ntx;

	/* Attach underlying qdisc */
	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		qdisc = priv->qdiscs[ntx];
		qdisc = FUNC0(qdisc->dev_queue, qdisc);
		if (qdisc)
			FUNC2(qdisc);
	}
	FUNC1(priv->qdiscs);
	priv->qdiscs = NULL;
}