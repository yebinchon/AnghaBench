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
typedef  int u16 ;
struct vlan_group {int dummy; } ;
struct sk_buff {int deliver_no_wcard; int /*<<< orphan*/  pkt_type; struct net_device* dev; int /*<<< orphan*/  iif; } ;
struct net_device {int flags; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IFF_PROMISC ; 
 int NET_RX_DROP ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC7 (struct vlan_group*,int) ; 

int FUNC8(struct sk_buff *skb, struct vlan_group *grp,
		      u16 vlan_tci, int polling)
{
	struct net_device *vlan_dev;
	u16 vlan_id;

	if (FUNC5(skb))
		return NET_RX_DROP;

	if (FUNC6(skb, FUNC0(skb->dev->master)))
		skb->deliver_no_wcard = 1;

	skb->iif = skb->dev->ifindex;
	vlan_id = vlan_tci & VLAN_VID_MASK;
	if (vlan_id)
		FUNC1(skb, vlan_tci);
	vlan_dev = FUNC7(grp, vlan_id);

	if (vlan_dev)
		skb->dev = vlan_dev;
	else if (vlan_id) {
		if (!(skb->dev->flags & IFF_PROMISC))
			goto drop;
		skb->pkt_type = PACKET_OTHERHOST;
	}

	return (polling ? FUNC3(skb) : FUNC4(skb));

drop:
	FUNC2(skb);
	return NET_RX_DROP;
}