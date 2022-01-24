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
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  pkt_type; struct nf_bridge_info* nf_bridge; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst; } ;
struct rtable {TYPE_1__ u; } ;
struct nf_bridge_info {int mask; int /*<<< orphan*/  physindev; } ;

/* Variables and functions */
 int BRNF_NF_BRIDGE_PREROUTING ; 
 int BRNF_PKT_TYPE ; 
 int /*<<< orphan*/  NF_BR_PRE_ROUTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  PF_BRIDGE ; 
 int /*<<< orphan*/  br_handle_frame_finish ; 
 struct rtable* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	struct nf_bridge_info *nf_bridge = skb->nf_bridge;
	struct rtable *rt;

	if (nf_bridge->mask & BRNF_PKT_TYPE) {
		skb->pkt_type = PACKET_OTHERHOST;
		nf_bridge->mask ^= BRNF_PKT_TYPE;
	}
	nf_bridge->mask ^= BRNF_NF_BRIDGE_PREROUTING;

	rt = FUNC1(nf_bridge->physindev);
	if (!rt) {
		FUNC3(skb);
		return 0;
	}
	FUNC2(&rt->u.dst);
	FUNC5(skb, &rt->u.dst);

	skb->dev = nf_bridge->physindev;
	FUNC4(skb);
	FUNC0(PF_BRIDGE, NF_BR_PRE_ROUTING, skb, skb->dev, NULL,
		       br_handle_frame_finish, 1);

	return 0;
}