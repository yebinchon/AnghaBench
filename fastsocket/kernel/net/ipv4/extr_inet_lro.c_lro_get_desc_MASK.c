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
struct net_lro_mgr {int max_desc; } ;
struct net_lro_desc {scalar_t__ active; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_lro_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_lro_desc*,struct iphdr*,struct tcphdr*) ; 
 int /*<<< orphan*/  no_desc ; 

__attribute__((used)) static struct net_lro_desc *FUNC2(struct net_lro_mgr *lro_mgr,
					 struct net_lro_desc *lro_arr,
					 struct iphdr *iph,
					 struct tcphdr *tcph)
{
	struct net_lro_desc *lro_desc = NULL;
	struct net_lro_desc *tmp;
	int max_desc = lro_mgr->max_desc;
	int i;

	for (i = 0; i < max_desc; i++) {
		tmp = &lro_arr[i];
		if (tmp->active)
			if (!FUNC1(tmp, iph, tcph)) {
				lro_desc = tmp;
				goto out;
			}
	}

	for (i = 0; i < max_desc; i++) {
		if (!lro_arr[i].active) {
			lro_desc = &lro_arr[i];
			goto out;
		}
	}

	FUNC0(lro_mgr, no_desc);
out:
	return lro_desc;
}