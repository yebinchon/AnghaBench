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
struct xt_match_param {int /*<<< orphan*/  hotdrop; struct ipt_ecn_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_ecn_info {int operation; } ;
struct TYPE_2__ {scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_TCP ; 
 int IPT_ECN_OP_MATCH_CWR ; 
 int IPT_ECN_OP_MATCH_ECE ; 
 int IPT_ECN_OP_MATCH_IP ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*,struct ipt_ecn_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*,struct ipt_ecn_info const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct ipt_ecn_info *info = par->matchinfo;

	if (info->operation & IPT_ECN_OP_MATCH_IP)
		if (!FUNC1(skb, info))
			return false;

	if (info->operation & (IPT_ECN_OP_MATCH_ECE|IPT_ECN_OP_MATCH_CWR)) {
		if (FUNC0(skb)->protocol != IPPROTO_TCP)
			return false;
		if (!FUNC2(skb, info, par->hotdrop))
			return false;
	}

	return true;
}