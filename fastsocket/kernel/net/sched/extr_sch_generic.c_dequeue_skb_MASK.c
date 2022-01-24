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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {struct sk_buff* (* dequeue ) (struct Qdisc*) ;TYPE_1__ q; struct sk_buff* gso_skb; } ;

/* Variables and functions */
 struct netdev_queue* FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct netdev_queue*) ; 
 struct net_device* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct Qdisc*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static inline struct sk_buff *FUNC7(struct Qdisc *q)
{
	struct sk_buff *skb = q->gso_skb;

	if (FUNC6(skb)) {
		struct net_device *dev = FUNC3(q);
		struct netdev_queue *txq;

		/* check the reason of requeuing without tx lock first */
		txq = FUNC0(dev, FUNC4(skb));
		if (!FUNC2(txq) &&
		    !FUNC1(txq)) {
			q->gso_skb = NULL;
			q->q.qlen--;
		} else
			skb = NULL;
	} else {
		skb = q->dequeue(q);
	}

	return skb;
}