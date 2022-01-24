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
struct sk_buff {unsigned char* data; int /*<<< orphan*/  dev; } ;
struct dn_skb_cb {unsigned char hops; void* src; void* dst; } ;
typedef  void* __le16 ;

/* Variables and functions */
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  NF_DN_PRE_ROUTING ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PF_DECnet ; 
 int /*<<< orphan*/  dn_route_rx_packet ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	struct dn_skb_cb *cb = FUNC0(skb);
	unsigned char *ptr = skb->data;

	if (!FUNC3(skb, 6)) /* 5 for short header + 1 for shortest nsp */
		goto drop_it;

	FUNC4(skb, 5);
	FUNC5(skb);

	cb->dst = *(__le16 *)ptr;
	ptr += 2;
	cb->src = *(__le16 *)ptr;
	ptr += 2;
	cb->hops = *ptr & 0x3f;

	return FUNC1(PF_DECnet, NF_DN_PRE_ROUTING, skb, skb->dev, NULL, dn_route_rx_packet);

drop_it:
	FUNC2(skb);
	return NET_RX_DROP;
}