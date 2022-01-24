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
typedef  int u_int8_t ;
struct xt_target_param {struct xt_DSCP_info* targinfo; } ;
struct xt_DSCP_info {int dscp; } ;
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 unsigned int NF_DROP ; 
 unsigned int XT_CONTINUE ; 
 scalar_t__ XT_DSCP_MASK ; 
 int XT_DSCP_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static unsigned int
FUNC4(struct sk_buff *skb, const struct xt_target_param *par)
{
	const struct xt_DSCP_info *dinfo = par->targinfo;
	u_int8_t dscp = FUNC1(FUNC2(skb)) >> XT_DSCP_SHIFT;

	if (dscp != dinfo->dscp) {
		if (!FUNC3(skb, sizeof(struct ipv6hdr)))
			return NF_DROP;

		FUNC0(FUNC2(skb), (__u8)(~XT_DSCP_MASK),
				    dinfo->dscp << XT_DSCP_SHIFT);
	}
	return XT_CONTINUE;
}