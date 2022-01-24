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
struct sk_buff {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct Qdisc*) ; 
 struct netdev_queue* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC3 (struct Qdisc*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline int FUNC7(struct Qdisc *q)
{
	struct netdev_queue *txq;
	struct net_device *dev;
	spinlock_t *root_lock;
	struct sk_buff *skb;

	/* Dequeue packet */
	skb = FUNC0(q);
	if (FUNC6(!skb))
		return 0;

	root_lock = FUNC3(q);
	dev = FUNC2(q);
	txq = FUNC1(dev, FUNC5(skb));

	return FUNC4(skb, q, dev, txq, root_lock);
}