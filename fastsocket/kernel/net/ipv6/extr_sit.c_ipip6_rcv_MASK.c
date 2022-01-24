#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {TYPE_2__* dev; scalar_t__ len; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; int /*<<< orphan*/  network_header; int /*<<< orphan*/  mac_header; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel {TYPE_2__* dev; } ;
struct TYPE_7__ {scalar_t__ flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; } ;
struct TYPE_6__ {int priv_flags; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 int IFF_ISATAP ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct iphdr*,struct sk_buff*) ; 
 int /*<<< orphan*/  ipip6_lock ; 
 struct ip_tunnel* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct iphdr*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb)
{
	struct iphdr *iph;
	struct ip_tunnel *tunnel;

	if (!FUNC11(skb, sizeof(struct ipv6hdr)))
		goto out;

	iph = FUNC4(skb);

	FUNC12(&ipip6_lock);
	tunnel = FUNC6(FUNC1(skb->dev), skb->dev,
				     iph->saddr, iph->daddr);
	if (tunnel != NULL) {
		FUNC14(skb);
		skb->mac_header = skb->network_header;
		FUNC16(skb);
		FUNC0(skb)->flags = 0;
		skb->protocol = FUNC2(ETH_P_IPV6);
		skb->pkt_type = PACKET_HOST;

		if ((tunnel->dev->priv_flags & IFF_ISATAP) &&
		    !FUNC7(skb, iph, tunnel)) {
			tunnel->dev->stats.rx_errors++;
			FUNC13(&ipip6_lock);
			FUNC8(skb);
			return 0;
		}
		tunnel->dev->stats.rx_packets++;
		tunnel->dev->stats.rx_bytes += skb->len;
		skb->dev = tunnel->dev;
		FUNC15(skb);
		FUNC10(skb);
		FUNC5(iph, skb);
		FUNC9(skb);
		FUNC13(&ipip6_lock);
		return 0;
	}

	FUNC3(skb, ICMP_DEST_UNREACH, ICMP_PORT_UNREACH, 0);
	FUNC13(&ipip6_lock);
out:
	FUNC8(skb);
	return 0;
}