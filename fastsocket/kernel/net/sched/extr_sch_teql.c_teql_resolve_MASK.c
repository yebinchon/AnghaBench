#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct netdev_queue {int /*<<< orphan*/ * qdisc; } ;
struct net_device {int /*<<< orphan*/ * header_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/ * neighbour; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct sk_buff*,struct sk_buff*,struct net_device*) ; 
 struct netdev_queue* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC3(struct sk_buff *skb,
			       struct sk_buff *skb_res, struct net_device *dev)
{
	struct netdev_queue *txq = FUNC1(dev, 0);
	if (txq->qdisc == &noop_qdisc)
		return -ENODEV;

	if (dev->header_ops == NULL ||
	    FUNC2(skb) == NULL ||
	    FUNC2(skb)->neighbour == NULL)
		return 0;
	return FUNC0(skb, skb_res, dev);
}