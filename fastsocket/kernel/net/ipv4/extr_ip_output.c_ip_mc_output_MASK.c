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
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  len; struct sock* sk; } ;
struct TYPE_6__ {struct net_device* dev; } ;
struct TYPE_7__ {TYPE_1__ dst; } ;
struct rtable {int rt_flags; TYPE_2__ u; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {scalar_t__ mc_loop; } ;
struct TYPE_8__ {scalar_t__ ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 TYPE_5__* FUNC0 (struct sk_buff*) ; 
 int IPSKB_FORWARDED ; 
 int IPSKB_REROUTED ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NF_INET_POST_ROUTING ; 
 int /*<<< orphan*/  PF_INET ; 
 int RTCF_BROADCAST ; 
 int RTCF_LOCAL ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  ip_dev_loopback_xmit ; 
 int /*<<< orphan*/  ip_finish_output ; 
 TYPE_3__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC10 (struct sk_buff*) ; 

int FUNC11(struct sk_buff *skb)
{
	struct sock *sk = skb->sk;
	struct rtable *rt = FUNC10(skb);
	struct net_device *dev = rt->u.dst.dev;

	/*
	 *	If the indicated interface is up and running, send the packet.
	 */
	FUNC1(FUNC4(dev), IPSTATS_MIB_OUT, skb->len);

	skb->dev = dev;
	skb->protocol = FUNC5(ETH_P_IP);

	/*
	 *	Multicasts are looped back for other local users
	 */

	if (rt->rt_flags&RTCF_MULTICAST) {
		if ((!sk || FUNC6(sk)->mc_loop)
#ifdef CONFIG_IP_MROUTE
		/* Small optimization: do not loopback not local frames,
		   which returned after forwarding; they will be  dropped
		   by ip_mr_input in any case.
		   Note, that local frames are looped back to be delivered
		   to local recipients.

		   This check is duplicated in ip_mr_input at the moment.
		 */
		    && ((rt->rt_flags&RTCF_LOCAL) || !(IPCB(skb)->flags&IPSKB_FORWARDED))
#endif
		) {
			struct sk_buff *newskb = FUNC9(skb, GFP_ATOMIC);
			if (newskb)
				FUNC2(PF_INET, NF_INET_POST_ROUTING, newskb,
					NULL, newskb->dev,
					ip_dev_loopback_xmit);
		}

		/* Multicasts with ttl 0 must not go beyond the host */

		if (FUNC7(skb)->ttl == 0) {
			FUNC8(skb);
			return 0;
		}
	}

	if (rt->rt_flags&RTCF_BROADCAST) {
		struct sk_buff *newskb = FUNC9(skb, GFP_ATOMIC);
		if (newskb)
			FUNC2(PF_INET, NF_INET_POST_ROUTING, newskb, NULL,
				newskb->dev, ip_dev_loopback_xmit);
	}

	return FUNC3(PF_INET, NF_INET_POST_ROUTING, skb, NULL, skb->dev,
			    ip_finish_output,
			    !(FUNC0(skb)->flags & IPSKB_REROUTED));
}