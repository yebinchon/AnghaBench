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
struct sk_buff {scalar_t__ pkt_type; scalar_t__ dev; TYPE_2__* nf_bridge; } ;
struct dst_entry {TYPE_1__* neighbour; scalar_t__ hh; } ;
struct TYPE_4__ {int /*<<< orphan*/  mask; } ;
struct TYPE_3__ {int (* output ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BRNF_NF_BRIDGE_PREROUTING ; 
 int /*<<< orphan*/  BRNF_PKT_TYPE ; 
 scalar_t__ PACKET_HOST ; 
 scalar_t__ PACKET_OTHERHOST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct dst_entry* FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	if (skb->pkt_type == PACKET_OTHERHOST) {
		skb->pkt_type = PACKET_HOST;
		skb->nf_bridge->mask |= BRNF_PKT_TYPE;
	}
	skb->nf_bridge->mask ^= BRNF_NF_BRIDGE_PREROUTING;

	skb->dev = FUNC0(skb->dev);
	if (skb->dev) {
		struct dst_entry *dst = FUNC4(skb);

		FUNC3(skb);

		if (dst->hh)
			return FUNC2(dst->hh, skb);
		else if (dst->neighbour)
			return dst->neighbour->output(skb);
	}
	FUNC1(skb);
	return 0;
}