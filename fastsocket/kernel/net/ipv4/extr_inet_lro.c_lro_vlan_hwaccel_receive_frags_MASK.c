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
typedef  int /*<<< orphan*/  u16 ;
struct vlan_group {int dummy; } ;
struct skb_frag_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_lro_mgr {int features; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 int LRO_F_NAPI ; 
 struct sk_buff* FUNC0 (struct net_lro_mgr*,struct skb_frag_struct*,int,int,struct vlan_group*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct vlan_group*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct vlan_group*,int /*<<< orphan*/ ) ; 

void FUNC3(struct net_lro_mgr *lro_mgr,
				    struct skb_frag_struct *frags,
				    int len, int true_size,
				    struct vlan_group *vgrp,
				    u16 vlan_tag, void *priv, __wsum sum)
{
	struct sk_buff *skb;

	skb = FUNC0(lro_mgr, frags, len, true_size, vgrp,
				 vlan_tag, priv, sum);
	if (!skb)
		return;

	if (lro_mgr->features & LRO_F_NAPI)
		FUNC1(skb, vgrp, vlan_tag);
	else
		FUNC2(skb, vgrp, vlan_tag);
}