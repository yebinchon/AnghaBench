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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  len; scalar_t__ sk; int /*<<< orphan*/  protocol; } ;
struct net_device {int flags; } ;
struct ipv6_pinfo {scalar_t__ mc_loop; } ;
struct inet6_dev {int dummy; } ;
struct dst_entry {struct net_device* dev; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ hop_limit; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_LOOPBACK ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int IP6SKB_FORWARDED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inet6_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inet6_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTMCAST ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  ip6_dev_loopback_xmit ; 
 struct inet6_dev* FUNC7 (struct dst_entry*) ; 
 int /*<<< orphan*/  ip6_output_finish ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC14 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC14(skb);
	struct net_device *dev = dst->dev;

	skb->protocol = FUNC5(ETH_P_IPV6);
	skb->dev = dev;

	if (FUNC8(&FUNC10(skb)->daddr)) {
		struct ipv6_pinfo* np = skb->sk ? FUNC6(skb->sk) : NULL;
		struct inet6_dev *idev = FUNC7(FUNC14(skb));

		if (!(dev->flags & IFF_LOOPBACK) && (!np || np->mc_loop) &&
		    ((FUNC12(FUNC4(dev)) &&
		     !(FUNC0(skb)->flags & IP6SKB_FORWARDED)) ||
		     FUNC9(dev, &FUNC10(skb)->daddr,
					 &FUNC10(skb)->saddr))) {
			struct sk_buff *newskb = FUNC13(skb, GFP_ATOMIC);

			/* Do not check for IFF_ALLMULTI; multicast routing
			   is not supported in any case.
			 */
			if (newskb)
				FUNC3(PF_INET6, NF_INET_POST_ROUTING, newskb,
					NULL, newskb->dev,
					ip6_dev_loopback_xmit);

			if (FUNC10(skb)->hop_limit == 0) {
				FUNC1(FUNC4(dev), idev,
					      IPSTATS_MIB_OUTDISCARDS);
				FUNC11(skb);
				return 0;
			}
		}

		FUNC2(FUNC4(dev), idev, IPSTATS_MIB_OUTMCAST,
				skb->len);
	}

	return FUNC3(PF_INET6, NF_INET_POST_ROUTING, skb, NULL, skb->dev,
		       ip6_output_finish);
}