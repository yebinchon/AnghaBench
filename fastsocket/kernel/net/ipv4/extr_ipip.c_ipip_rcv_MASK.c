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
struct sk_buff {TYPE_2__* dev; scalar_t__ len; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; int /*<<< orphan*/  network_header; int /*<<< orphan*/  mac_header; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip_tunnel {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct iphdr const*,struct sk_buff*) ; 
 int /*<<< orphan*/  ipip_lock ; 
 struct ip_tunnel* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb)
{
	struct ip_tunnel *tunnel;
	const struct iphdr *iph = FUNC2(skb);

	FUNC8(&ipip_lock);
	if ((tunnel = FUNC4(FUNC0(skb->dev),
					iph->saddr, iph->daddr)) != NULL) {
		if (!FUNC13(NULL, XFRM_POLICY_IN, skb)) {
			FUNC9(&ipip_lock);
			FUNC5(skb);
			return 0;
		}

		FUNC10(skb);

		skb->mac_header = skb->network_header;
		FUNC12(skb);
		skb->protocol = FUNC1(ETH_P_IP);
		skb->pkt_type = PACKET_HOST;

		tunnel->dev->stats.rx_packets++;
		tunnel->dev->stats.rx_bytes += skb->len;
		skb->dev = tunnel->dev;
		FUNC11(skb);
		FUNC7(skb);
		FUNC3(iph, skb);
		FUNC6(skb);
		FUNC9(&ipip_lock);
		return 0;
	}
	FUNC9(&ipip_lock);

	return -1;
}