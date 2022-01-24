#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IPSKB_REROUTED ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_finish_output ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sk_buff *skb)
{
	struct net_device *dev = FUNC5(skb)->dev;

	FUNC1(FUNC3(dev), IPSTATS_MIB_OUT, skb->len);

	skb->dev = dev;
	skb->protocol = FUNC4(ETH_P_IP);

	return FUNC2(PF_INET, NF_INET_POST_ROUTING, skb, NULL, dev,
			    ip_finish_output,
			    !(FUNC0(skb)->flags & IPSKB_REROUTED));
}