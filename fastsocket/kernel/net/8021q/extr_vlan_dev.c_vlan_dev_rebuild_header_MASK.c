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
struct vlan_ethhdr {int h_vlan_encapsulated_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct sk_buff {scalar_t__ data; struct net_device* dev; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct net_device *dev = skb->dev;
	struct vlan_ethhdr *veth = (struct vlan_ethhdr *)(skb->data);

	switch (veth->h_vlan_encapsulated_proto) {
#ifdef CONFIG_INET
	case htons(ETH_P_IP):

		/* TODO:  Confirm this will work with VLAN headers... */
		return arp_find(veth->h_dest, skb);
#endif
	default:
		FUNC4("%s: unable to resolve type %X addresses.\n",
			 dev->name, FUNC3(veth->h_vlan_encapsulated_proto));

		FUNC2(veth->h_source, dev->dev_addr, ETH_ALEN);
		break;
	}

	return 0;
}