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
struct TYPE_2__ {scalar_t__ tv64; } ;
struct sk_buff {scalar_t__ mark; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; TYPE_1__ tstamp; scalar_t__ iif; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct net_device *dev, struct sk_buff *skb)
{
	FUNC7(skb);
	FUNC4(skb);

	if (FUNC8(!FUNC1(dev, skb))) {
		FUNC2(skb);
		return NET_RX_DROP;
	}
	skb->iif = 0;
	FUNC6(skb);
	skb->tstamp.tv64 = 0;
	skb->pkt_type = PACKET_HOST;
	skb->protocol = FUNC0(skb, dev);
	skb->mark = 0;
	FUNC5(skb);
	FUNC4(skb);
	return FUNC3(skb);
}