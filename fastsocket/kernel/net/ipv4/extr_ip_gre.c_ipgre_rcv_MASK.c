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
struct tnl_ptk_info {scalar_t__ proto; int /*<<< orphan*/  key; int /*<<< orphan*/  flags; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int PACKET_RCVD ; 
 int PACKET_REJECT ; 
 struct net* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  gre_tap_net_id ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 struct ip_tunnel* FUNC3 (struct ip_tunnel_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_tunnel*,struct sk_buff*,struct tnl_ptk_info const*,int) ; 
 int /*<<< orphan*/  ipgre_net_id ; 
 struct ip_tunnel_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, const struct tnl_ptk_info *tpi)
{
	struct net *net = FUNC0(skb->dev);
	struct ip_tunnel_net *itn;
	const struct iphdr *iph;
	struct ip_tunnel *tunnel;

	if (tpi->proto == FUNC1(ETH_P_TEB))
		itn = FUNC5(net, gre_tap_net_id);
	else
		itn = FUNC5(net, ipgre_net_id);

	iph = FUNC2(skb);
	tunnel = FUNC3(itn, skb->dev->ifindex, tpi->flags,
				  iph->saddr, iph->daddr, tpi->key);

	if (tunnel) {
		FUNC4(tunnel, skb, tpi, false);
		return PACKET_RCVD;
	}
	return PACKET_REJECT;
}