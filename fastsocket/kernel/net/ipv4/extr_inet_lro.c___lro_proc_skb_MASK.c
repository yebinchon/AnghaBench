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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct vlan_group {int dummy; } ;
struct tcphdr {int /*<<< orphan*/  seq; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; int /*<<< orphan*/  ip_summed; } ;
struct net_lro_mgr {int features; scalar_t__ max_aggr; TYPE_2__* dev; int /*<<< orphan*/  ip_summed_aggr; int /*<<< orphan*/  lro_arr; scalar_t__ (* get_skb_header ) (struct sk_buff*,void*,void*,int*,void*) ;} ;
struct net_lro_desc {scalar_t__ tcp_next_seq; scalar_t__ pkt_aggr_cnt; TYPE_1__* parent; int /*<<< orphan*/  active; } ;
struct iphdr {int dummy; } ;
struct TYPE_4__ {int mtu; } ;
struct TYPE_3__ {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int LRO_F_EXTRACT_VLAN_ID ; 
 int /*<<< orphan*/  FUNC0 (struct net_lro_mgr*,int /*<<< orphan*/ ) ; 
 int LRO_IPV4 ; 
 int LRO_TCP ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  aggregated ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_lro_desc*,struct sk_buff*,struct iphdr*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_lro_mgr*,struct net_lro_desc*) ; 
 struct net_lro_desc* FUNC4 (struct net_lro_mgr*,int /*<<< orphan*/ ,struct iphdr*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_lro_desc*,struct sk_buff*,struct iphdr*,struct tcphdr*,int /*<<< orphan*/ ,struct vlan_group*) ; 
 scalar_t__ FUNC6 (struct iphdr*,struct tcphdr*,scalar_t__,struct net_lro_desc*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,void*,void*,int*,void*) ; 

__attribute__((used)) static int FUNC9(struct net_lro_mgr *lro_mgr, struct sk_buff *skb,
			  struct vlan_group *vgrp, u16 vlan_tag, void *priv)
{
	struct net_lro_desc *lro_desc;
	struct iphdr *iph;
	struct tcphdr *tcph;
	u64 flags;
	int vlan_hdr_len = 0;

	if (!lro_mgr->get_skb_header
	    || lro_mgr->get_skb_header(skb, (void *)&iph, (void *)&tcph,
				       &flags, priv))
		goto out;

	if (!(flags & LRO_IPV4) || !(flags & LRO_TCP))
		goto out;

	lro_desc = FUNC4(lro_mgr, lro_mgr->lro_arr, iph, tcph);
	if (!lro_desc)
		goto out;

	if ((skb->protocol == FUNC1(ETH_P_8021Q))
	    && !(lro_mgr->features & LRO_F_EXTRACT_VLAN_ID))
		vlan_hdr_len = VLAN_HLEN;

	if (!lro_desc->active) { /* start new lro session */
		if (FUNC6(iph, tcph, skb->len - vlan_hdr_len, NULL))
			goto out;

		skb->ip_summed = lro_mgr->ip_summed_aggr;
		FUNC5(lro_desc, skb, iph, tcph, vlan_tag, vgrp);
		FUNC0(lro_mgr, aggregated);
		return 0;
	}

	if (lro_desc->tcp_next_seq != FUNC7(tcph->seq))
		goto out2;

	if (FUNC6(iph, tcph, skb->len, lro_desc))
		goto out2;

	FUNC2(lro_desc, skb, iph, tcph);
	FUNC0(lro_mgr, aggregated);

	if ((lro_desc->pkt_aggr_cnt >= lro_mgr->max_aggr) ||
	    lro_desc->parent->len > (0xFFFF - lro_mgr->dev->mtu))
		FUNC3(lro_mgr, lro_desc);

	return 0;

out2: /* send aggregated SKBs to stack */
	FUNC3(lro_mgr, lro_desc);

out:
	return 1;
}