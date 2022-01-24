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
struct vlan_hdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  mac_header; scalar_t__ data; int /*<<< orphan*/  csum; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  VLAN_ETH_HLEN ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct vlan_hdr*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, __be16 *current_tci)
{
	struct vlan_hdr *vhdr;
	int err;

	err = FUNC3(skb, VLAN_ETH_HLEN);
	if (FUNC6(err))
		return err;

	if (skb->ip_summed == CHECKSUM_COMPLETE)
		skb->csum = FUNC2(skb->csum, FUNC1(skb->data
					+ (2 * ETH_ALEN), VLAN_HLEN, 0));

	vhdr = (struct vlan_hdr *)(skb->data + ETH_HLEN);
	*current_tci = vhdr->h_vlan_TCI;

	FUNC4(skb->data + VLAN_HLEN, skb->data, 2 * ETH_ALEN);
	FUNC0(skb, VLAN_HLEN);

	FUNC7(skb, vhdr);
	skb->mac_header += VLAN_HLEN;
	FUNC5(skb);

	return 0;
}