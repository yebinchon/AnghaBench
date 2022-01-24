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
struct vlan_hdr {scalar_t__ h_vlan_encapsulated_proto; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ VLAN_HLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 

__be16 FUNC3(struct sk_buff *skb)
{
	__be16 type = skb->protocol;
	int vlan_depth = ETH_HLEN;

	while (type == FUNC0(ETH_P_8021Q)) {
		struct vlan_hdr *vh;

		if (FUNC2(!FUNC1(skb, vlan_depth + VLAN_HLEN)))
			return 0;

		vh = (struct vlan_hdr *)(skb->data + vlan_depth);
		type = vh->h_vlan_encapsulated_proto;
		vlan_depth += VLAN_HLEN;
	}

	return type;
}