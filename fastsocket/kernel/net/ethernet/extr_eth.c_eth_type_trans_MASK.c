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
struct sk_buff {unsigned char* data; int /*<<< orphan*/  pkt_type; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  broadcast; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  ETH_P_802_3 ; 
 int /*<<< orphan*/  ETH_P_DSA ; 
 int /*<<< orphan*/  ETH_P_TRAILER ; 
 int /*<<< orphan*/  PACKET_BROADCAST ; 
 int /*<<< orphan*/  PACKET_MULTICAST ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__be16 FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct ethhdr *eth;
	unsigned char *rawp;

	skb->dev = dev;
	FUNC8(skb);
	FUNC7(skb, ETH_HLEN);
	eth = FUNC1(skb);

	if (FUNC9(FUNC3(eth->h_dest))) {
		if (!FUNC0(eth->h_dest, dev->broadcast))
			skb->pkt_type = PACKET_BROADCAST;
		else
			skb->pkt_type = PACKET_MULTICAST;
	}

	/*
	 *      This ALLMULTI check should be redundant by 1.4
	 *      so don't forget to remove it.
	 *
	 *      Seems, you forgot to remove it. All silly devices
	 *      seems to set IFF_PROMISC.
	 */

	else if (1 /*dev->flags&IFF_PROMISC */ ) {
		if (FUNC9(FUNC0(eth->h_dest, dev->dev_addr)))
			skb->pkt_type = PACKET_OTHERHOST;
	}

	/*
	 * Some variants of DSA tagging don't have an ethertype field
	 * at all, so we check here whether one of those tagging
	 * variants has been configured on the receiving interface,
	 * and if so, set skb->protocol without looking at the packet.
	 */
	if (FUNC4(dev))
		return FUNC2(ETH_P_DSA);
	if (FUNC5(dev))
		return FUNC2(ETH_P_TRAILER);

	if (FUNC6(eth->h_proto) >= 1536)
		return eth->h_proto;

	rawp = skb->data;

	/*
	 *      This is a magic hack to spot IPX packets. Older Novell breaks
	 *      the protocol design and runs IPX over 802.3 without an 802.2 LLC
	 *      layer. We look for FFFF which isn't a used 802.2 SSAP/DSAP. This
	 *      won't work for fault tolerant netware but does for the rest.
	 */
	if (*(unsigned short *)rawp == 0xFFFF)
		return FUNC2(ETH_P_802_3);

	/*
	 *      Real 802.2 LLC
	 */
	return FUNC2(ETH_P_802_2);
}