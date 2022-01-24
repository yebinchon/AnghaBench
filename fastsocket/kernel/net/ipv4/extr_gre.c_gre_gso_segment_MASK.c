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
struct vlan_ethhdr {scalar_t__ h_vlan_proto; scalar_t__ h_vlan_encapsulated_proto; } ;
struct sk_buff {int mac_len; scalar_t__ protocol; int /*<<< orphan*/  len; scalar_t__ data; struct sk_buff* next; scalar_t__ encapsulation; } ;
struct gre_base_hdr {int flags; scalar_t__ protocol; } ;
typedef  int /*<<< orphan*/  __sum16 ;
typedef  scalar_t__ __be32 ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {int gso_type; } ;

/* Variables and functions */
 int EINVAL ; 
 struct sk_buff* FUNC0 (int) ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_TEB ; 
 int GRE_CSUM ; 
 int GRE_HEADER_SECTION ; 
 int GRE_KEY ; 
 int GRE_SEQ ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int NETIF_F_SG ; 
 int SKB_GSO_DODGY ; 
 int SKB_GSO_GRE ; 
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int SKB_GSO_TCP_ECN ; 
 int SKB_GSO_UDP ; 
 int VLAN_ETH_HLEN ; 
 scalar_t__ VLAN_HLEN ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC15 (struct sk_buff*) ; 
 int FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC19(struct sk_buff *skb,
				       int features)
{
	struct sk_buff *segs = FUNC0(-EINVAL);
	int ghl = GRE_HEADER_SECTION;
	struct gre_base_hdr *greh;
	int mac_len = skb->mac_len;
	__be16 protocol = skb->protocol;
	int inner_mac_len = 0;
	int tnl_hlen;
	bool csum;

	if (FUNC18(FUNC15(skb)->gso_type &
				~(SKB_GSO_TCPV4 |
				  SKB_GSO_TCPV6 |
				  SKB_GSO_UDP |
				  SKB_GSO_DODGY |
				  SKB_GSO_TCP_ECN |
				  SKB_GSO_GRE)))
		goto out;

	if (FUNC18(!FUNC9(skb, sizeof(*greh))))
		goto out;

	greh = (struct gre_base_hdr *)FUNC17(skb);

	if (greh->flags & GRE_KEY)
		ghl += GRE_HEADER_SECTION;
	if (greh->flags & GRE_SEQ)
		ghl += GRE_HEADER_SECTION;
	if (greh->flags & GRE_CSUM) {
		ghl += GRE_HEADER_SECTION;
		csum = true;
	} else
		csum = false;

	/* RHEL specific
	 *
	 * Due to lack of inner header marks in struct sk_buff, the
	 * only way to regain knowledge of the inner header protocol
	 * and inner mac header boundry is by packet inspection.
	 */
	if (greh->protocol == FUNC6(ETH_P_TEB)) {
		struct vlan_ethhdr *veth;

		if (FUNC18(!FUNC9(skb, ghl + ETH_HLEN)))
			goto out;

		veth = (struct vlan_ethhdr *) (skb->data + ghl);
		inner_mac_len = ETH_HLEN;

		if (veth->h_vlan_proto == FUNC6(ETH_P_8021Q)) {
			if (FUNC18(!FUNC9(skb, ghl + VLAN_ETH_HLEN)))
				goto out;

			skb->protocol = veth->h_vlan_encapsulated_proto;
			inner_mac_len += VLAN_HLEN;
		} else
			skb->protocol = veth->h_vlan_proto;
	} else {
		skb->protocol = greh->protocol;

		if (FUNC18(!FUNC9(skb, ghl)))
			goto out;
	}

	skb->encapsulation = 0;

	FUNC3(skb, ghl);
	FUNC13(skb);

	FUNC14(skb, inner_mac_len);
	skb->mac_len = inner_mac_len;

	/* segment inner packet. */
	/* enc_features = skb->dev->hw_enc_features & netif_skb_features(skb);
	 * No hardware supports HW GRE TSO offload yet, fall back to software GSO
	 */
	segs = FUNC12(skb, NETIF_F_SG & FUNC8(skb));
	if (!segs || FUNC1(segs))
		goto out;

	skb = segs;
	tnl_hlen = FUNC16(skb);
	do {
		FUNC4(skb, ghl);
		if (csum) {
			__be32 *pcsum;

			if (FUNC11(skb)) {
				int err;

				err = FUNC2(skb);
				if (err) {
					FUNC7(segs);
					segs = FUNC0(err);
					goto out;
				}
			}

			greh = (struct gre_base_hdr *)(skb->data);
			pcsum = (__be32 *)(greh + 1);
			*pcsum = 0;
			*(__sum16 *)pcsum = FUNC5(FUNC10(skb, 0, skb->len, 0));
		}
		FUNC4(skb, tnl_hlen - ghl);

		FUNC13(skb);
		FUNC14(skb, mac_len);
		skb->mac_len = mac_len;
		skb->protocol = protocol;
	} while ((skb = skb->next));
out:
	return segs;
}