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
struct sk_buff {int /*<<< orphan*/  pkt_type; scalar_t__ vlan_tci; scalar_t__ protocol; scalar_t__ data; } ;
struct ethhdr {scalar_t__ h_proto; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  ETH_P_TEB ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct sk_buff *skb, int hdr_len, __be16 inner_proto)
{
	if (FUNC9(!FUNC4(skb, hdr_len)))
		return -ENOMEM;

	FUNC7(skb, hdr_len);

	if (inner_proto == FUNC0(ETH_P_TEB)) {
		struct ethhdr *eh = (struct ethhdr *)skb->data;

		if (FUNC9(!FUNC4(skb, ETH_HLEN)))
			return -ENOMEM;

		if (FUNC1(FUNC3(eh->h_proto) >= 1536))
			skb->protocol = eh->h_proto;
		else
			skb->protocol = FUNC0(ETH_P_802_2);

	} else {
		skb->protocol = inner_proto;
	}

	FUNC2(skb);
	FUNC5(skb);
	FUNC6(skb);
	skb->vlan_tci = 0;
	FUNC8(skb, 0);
	skb->pkt_type = PACKET_HOST;
	return 0;
}