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
struct xt_match_param {struct ebt_among_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_mac_wormhash {int dummy; } ;
struct ebt_among_info {int bitmask; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {char* h_source; char* h_dest; } ;

/* Variables and functions */
 int EBT_AMONG_DST_NEG ; 
 int EBT_AMONG_SRC_NEG ; 
 struct ebt_mac_wormhash* FUNC0 (struct ebt_among_info const*) ; 
 struct ebt_mac_wormhash* FUNC1 (struct ebt_among_info const*) ; 
 scalar_t__ FUNC2 (struct ebt_mac_wormhash const*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC6(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct ebt_among_info *info = par->matchinfo;
	const char *dmac, *smac;
	const struct ebt_mac_wormhash *wh_dst, *wh_src;
	__be32 dip = 0, sip = 0;

	wh_dst = FUNC0(info);
	wh_src = FUNC1(info);

	if (wh_src) {
		smac = FUNC3(skb)->h_source;
		if (FUNC5(skb, &sip))
			return false;
		if (!(info->bitmask & EBT_AMONG_SRC_NEG)) {
			/* we match only if it contains */
			if (!FUNC2(wh_src, smac, sip))
				return false;
		} else {
			/* we match only if it DOES NOT contain */
			if (FUNC2(wh_src, smac, sip))
				return false;
		}
	}

	if (wh_dst) {
		dmac = FUNC3(skb)->h_dest;
		if (FUNC4(skb, &dip))
			return false;
		if (!(info->bitmask & EBT_AMONG_DST_NEG)) {
			/* we match only if it contains */
			if (!FUNC2(wh_dst, dmac, dip))
				return false;
		} else {
			/* we match only if it DOES NOT contain */
			if (FUNC2(wh_dst, dmac, dip))
				return false;
		}
	}

	return true;
}