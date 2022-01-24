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
struct xt_target_param {struct xt_NFQ_info_v2* targinfo; } ;
struct xt_NFQ_info_v2 {scalar_t__ bypass; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int NF_VERDICT_FLAG_QUEUE_BYPASS ; 
 unsigned int FUNC0 (struct sk_buff*,struct xt_target_param const*) ; 

__attribute__((used)) static unsigned int
FUNC1(struct sk_buff *skb, const struct xt_target_param *par)
{
	const struct xt_NFQ_info_v2 *info = par->targinfo;
	unsigned int ret = FUNC0(skb, par);

	if (info->bypass)
		ret |= NF_VERDICT_FLAG_QUEUE_BYPASS;
	return ret;
}