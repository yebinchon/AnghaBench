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
struct tcphdr {int dummy; } ;
struct net_lro_mgr {int /*<<< orphan*/  lro_arr; } ;
struct net_lro_desc {scalar_t__ active; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_lro_mgr*,struct net_lro_desc*) ; 
 struct net_lro_desc* FUNC1 (struct net_lro_mgr*,int /*<<< orphan*/ ,struct iphdr*,struct tcphdr*) ; 

void FUNC2(struct net_lro_mgr *lro_mgr,
		  struct iphdr *iph, struct tcphdr *tcph)
{
	struct net_lro_desc *lro_desc;

	lro_desc = FUNC1(lro_mgr, lro_mgr->lro_arr, iph, tcph);
	if (lro_desc->active)
		FUNC0(lro_mgr, lro_desc);
}