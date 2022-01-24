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
struct net_lro_mgr {int features; } ;
struct net_lro_desc {int pkt_aggr_cnt; int /*<<< orphan*/  parent; int /*<<< orphan*/  vlan_tag; scalar_t__ vgrp; int /*<<< orphan*/  mss; } ;
struct TYPE_2__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int LRO_F_NAPI ; 
 int /*<<< orphan*/  FUNC0 (struct net_lro_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flushed ; 
 int /*<<< orphan*/  FUNC1 (struct net_lro_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_lro_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_lro_mgr *lro_mgr,
		      struct net_lro_desc *lro_desc)
{
	if (lro_desc->pkt_aggr_cnt > 1)
		FUNC2(lro_desc);

	FUNC5(lro_desc->parent)->gso_size = lro_desc->mss;

	if (lro_desc->vgrp) {
		if (lro_mgr->features & LRO_F_NAPI)
			FUNC6(lro_desc->parent,
						 lro_desc->vgrp,
						 lro_desc->vlan_tag);
		else
			FUNC7(lro_desc->parent,
					lro_desc->vgrp,
					lro_desc->vlan_tag);

	} else {
		if (lro_mgr->features & LRO_F_NAPI)
			FUNC3(lro_desc->parent);
		else
			FUNC4(lro_desc->parent);
	}

	FUNC0(lro_mgr, flushed);
	FUNC1(lro_desc);
}