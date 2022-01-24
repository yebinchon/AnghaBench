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
struct sk_buff {int dummy; } ;
struct ipt_ecn_info {int ip_ect; } ;
struct TYPE_2__ {int tos; } ;

/* Variables and functions */
 int IPT_ECN_IP_MASK ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 

__attribute__((used)) static inline bool FUNC1(const struct sk_buff *skb,
			    const struct ipt_ecn_info *einfo)
{
	return (FUNC0(skb)->tos & IPT_ECN_IP_MASK) == einfo->ip_ect;
}