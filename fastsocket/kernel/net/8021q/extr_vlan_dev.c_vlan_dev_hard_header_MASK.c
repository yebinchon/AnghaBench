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
typedef  unsigned int u16 ;
struct vlan_hdr {void* h_vlan_encapsulated_proto; void* h_vlan_TCI; } ;
struct sk_buff {void* protocol; } ;
struct net_device {scalar_t__ hard_header_len; void* dev_addr; } ;
struct TYPE_2__ {int flags; unsigned int vlan_id; struct net_device* real_dev; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned int ETH_P_8021Q ; 
 unsigned short ETH_P_802_3 ; 
 int VLAN_FLAG_REORDER_HDR ; 
 unsigned int VLAN_HLEN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct sk_buff*,struct net_device*,unsigned short,void const*,void const*,unsigned int) ; 
 void* FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC5 (struct net_device*,struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct net_device *dev,
				unsigned short type,
				const void *daddr, const void *saddr,
				unsigned int len)
{
	struct vlan_hdr *vhdr;
	unsigned int vhdrlen = 0;
	u16 vlan_tci = 0;
	int rc;

	if (FUNC0(FUNC3(skb) < dev->hard_header_len))
		return -ENOSPC;

	if (!(FUNC6(dev)->flags & VLAN_FLAG_REORDER_HDR)) {
		vhdr = (struct vlan_hdr *) FUNC4(skb, VLAN_HLEN);

		vlan_tci = FUNC6(dev)->vlan_id;
		vlan_tci |= FUNC5(dev, skb);
		vhdr->h_vlan_TCI = FUNC2(vlan_tci);

		/*
		 *  Set the protocol type. For a packet of type ETH_P_802_3 we
		 *  put the length in here instead. It is up to the 802.2
		 *  layer to carry protocol information.
		 */
		if (type != ETH_P_802_3)
			vhdr->h_vlan_encapsulated_proto = FUNC2(type);
		else
			vhdr->h_vlan_encapsulated_proto = FUNC2(len);

		skb->protocol = FUNC2(ETH_P_8021Q);
		type = ETH_P_8021Q;
		vhdrlen = VLAN_HLEN;
	}

	/* Before delegating work to the lower layer, enter our MAC-address */
	if (saddr == NULL)
		saddr = dev->dev_addr;

	/* Now make the underlying real hard header */
	dev = FUNC6(dev)->real_dev;
	rc = FUNC1(skb, dev, type, daddr, saddr, len + vhdrlen);
	if (rc > 0)
		rc += vhdrlen;
	return rc;
}