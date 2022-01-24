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
typedef  scalar_t__ u_int8_t ;
struct xt_match_param {struct xt_dscp_info* matchinfo; } ;
struct xt_dscp_info {scalar_t__ dscp; int /*<<< orphan*/  invert; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ XT_DSCP_SHIFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*) ; 

__attribute__((used)) static bool
FUNC2(const struct sk_buff *skb, const struct xt_match_param *par)
{
	const struct xt_dscp_info *info = par->matchinfo;
	u_int8_t dscp = FUNC0(FUNC1(skb)) >> XT_DSCP_SHIFT;

	return (dscp == info->dscp) ^ !!info->invert;
}