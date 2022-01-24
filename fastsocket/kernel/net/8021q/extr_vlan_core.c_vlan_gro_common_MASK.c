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
typedef  int u16 ;
struct vlan_group {int dummy; } ;
struct sk_buff {int deliver_no_wcard; struct net_device* dev; struct sk_buff* next; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  iif; } ;
struct net_device {int flags; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  master; } ;
struct napi_struct {struct sk_buff* gro_list; } ;
typedef  int /*<<< orphan*/  gro_result_t ;
struct TYPE_2__ {int same_flow; scalar_t__ flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRO_DROP ; 
 int IFF_PROMISC ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 unsigned int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct net_device* FUNC8 (struct vlan_group*,int) ; 

__attribute__((used)) static gro_result_t
FUNC9(struct napi_struct *napi, struct vlan_group *grp,
		unsigned int vlan_tci, struct sk_buff *skb)
{
	struct sk_buff *p;
	struct net_device *vlan_dev;
	u16 vlan_id;

	if (FUNC5(skb, FUNC0(skb->dev->master)))
		skb->deliver_no_wcard = 1;

	skb->iif = skb->dev->ifindex;
	FUNC2(skb, vlan_tci);
	vlan_id = vlan_tci & VLAN_VID_MASK;
	vlan_dev = FUNC8(grp, vlan_id);

	if (vlan_dev)
		skb->dev = vlan_dev;
	else if (vlan_id) {
		if (!(skb->dev->flags & IFF_PROMISC))
			goto drop;
		skb->pkt_type = PACKET_OTHERHOST;
	}

	for (p = napi->gro_list; p; p = p->next) {
		FUNC1(p)->same_flow =
			p->dev == skb->dev && !FUNC3(
				FUNC7(p), FUNC6(skb));
		FUNC1(p)->flush = 0;
	}

	return FUNC4(napi, skb);

drop:
	return GRO_DROP;
}