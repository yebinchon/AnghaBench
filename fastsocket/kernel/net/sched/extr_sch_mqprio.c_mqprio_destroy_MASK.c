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
struct mqprio_sched {scalar_t__* qdiscs; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct net_device* FUNC3 (struct Qdisc*) ; 
 struct mqprio_sched* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch)
{
	struct net_device *dev = FUNC3(sch);
	struct mqprio_sched *priv = FUNC4(sch);
	unsigned int ntx;

	if (priv->qdiscs) {
		for (ntx = 0;
		     ntx < dev->num_tx_queues && priv->qdiscs[ntx];
		     ntx++)
			FUNC2(priv->qdiscs[ntx]);
		FUNC0(priv->qdiscs);
	}

	FUNC1(dev, 0);
}