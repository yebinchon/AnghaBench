#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  scalar_t__ tcph ;
struct vlan_group {int dummy; } ;
struct tcphdr {int /*<<< orphan*/  seq; } ;
struct skb_frag_struct {int page_offset; int /*<<< orphan*/  page; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ data; } ;
struct net_lro_mgr {int features; scalar_t__ max_aggr; int /*<<< orphan*/  ip_summed; TYPE_1__* dev; int /*<<< orphan*/  ip_summed_aggr; int /*<<< orphan*/  lro_arr; scalar_t__ (* get_frag_header ) (struct skb_frag_struct*,void*,void*,void*,int*,void*) ;} ;
struct net_lro_desc {scalar_t__ tcp_next_seq; TYPE_3__* parent; int /*<<< orphan*/  active; } ;
struct iphdr {int dummy; } ;
typedef  scalar_t__ iph ;
typedef  int /*<<< orphan*/  __wsum ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {scalar_t__ nr_frags; } ;
struct TYPE_4__ {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FUNC0 (struct iphdr*) ; 
 int LRO_F_EXTRACT_VLAN_ID ; 
 int /*<<< orphan*/  FUNC1 (struct net_lro_mgr*,int /*<<< orphan*/ ) ; 
 int LRO_IPV4 ; 
 int LRO_MAX_PG_HLEN ; 
 int LRO_TCP ; 
 scalar_t__ FUNC2 (struct tcphdr*) ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  aggregated ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_lro_desc*,int,int,int,struct skb_frag_struct*,struct iphdr*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_lro_mgr*,struct net_lro_desc*) ; 
 struct sk_buff* FUNC6 (struct net_lro_mgr*,struct skb_frag_struct*,int,int,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_lro_desc* FUNC7 (struct net_lro_mgr*,int /*<<< orphan*/ ,struct iphdr*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_lro_desc*,struct sk_buff*,struct iphdr*,struct tcphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct iphdr*,struct tcphdr*,int,struct net_lro_desc*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (TYPE_3__*) ; 
 scalar_t__ FUNC13 (struct skb_frag_struct*,void*,void*,void*,int*,void*) ; 

__attribute__((used)) static struct sk_buff *FUNC14(struct net_lro_mgr *lro_mgr,
					  struct skb_frag_struct *frags,
					  int len, int true_size,
					  struct vlan_group *vgrp,
					  u16 vlan_tag, void *priv, __wsum sum)
{
	struct net_lro_desc *lro_desc;
	struct iphdr *iph;
	struct tcphdr *tcph;
	struct sk_buff *skb;
	u64 flags;
	void *mac_hdr;
	int mac_hdr_len;
	int hdr_len = LRO_MAX_PG_HLEN;
	int vlan_hdr_len = 0;

	if (!lro_mgr->get_frag_header
	    || lro_mgr->get_frag_header(frags, (void *)&mac_hdr, (void *)&iph,
					(void *)&tcph, &flags, priv)) {
		mac_hdr = FUNC11(frags->page) + frags->page_offset;
		goto out1;
	}

	if (!(flags & LRO_IPV4) || !(flags & LRO_TCP))
		goto out1;

	hdr_len = (int)((void *)(tcph) + FUNC2(tcph) - mac_hdr);
	mac_hdr_len = (int)((void *)(iph) - mac_hdr);

	lro_desc = FUNC7(lro_mgr, lro_mgr->lro_arr, iph, tcph);
	if (!lro_desc)
		goto out1;

	if (!lro_desc->active) { /* start new lro session */
		if (FUNC9(iph, tcph, len - mac_hdr_len, NULL))
			goto out1;

		skb = FUNC6(lro_mgr, frags, len, true_size, mac_hdr,
				  hdr_len, 0, lro_mgr->ip_summed_aggr);
		if (!skb)
			goto out;

		if ((skb->protocol == FUNC3(ETH_P_8021Q))
		    && !(lro_mgr->features & LRO_F_EXTRACT_VLAN_ID))
			vlan_hdr_len = VLAN_HLEN;

		iph = (void *)(skb->data + vlan_hdr_len);
		tcph = (void *)((u8 *)skb->data + vlan_hdr_len
				+ FUNC0(iph));

		FUNC8(lro_desc, skb, iph, tcph, 0, NULL);
		FUNC1(lro_mgr, aggregated);
		return NULL;
	}

	if (lro_desc->tcp_next_seq != FUNC10(tcph->seq))
		goto out2;

	if (FUNC9(iph, tcph, len - mac_hdr_len, lro_desc))
		goto out2;

	FUNC4(lro_desc, len, hdr_len, true_size, frags, iph, tcph);
	FUNC1(lro_mgr, aggregated);

	if ((FUNC12(lro_desc->parent)->nr_frags >= lro_mgr->max_aggr) ||
	    lro_desc->parent->len > (0xFFFF - lro_mgr->dev->mtu))
		FUNC5(lro_mgr, lro_desc);

	return NULL;

out2: /* send aggregated packets to the stack */
	FUNC5(lro_mgr, lro_desc);

out1:  /* Original packet has to be posted to the stack */
	skb = FUNC6(lro_mgr, frags, len, true_size, mac_hdr,
			  hdr_len, sum, lro_mgr->ip_summed);
out:
	return skb;
}