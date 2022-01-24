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
struct TYPE_2__ {scalar_t__ nr_frags; } ;

/* Variables and functions */
 int NETIF_F_FRAGLIST ; 
 int NETIF_F_SG ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC3(struct sk_buff *skb,
				      int features)
{
	return FUNC1(skb) &&
			((FUNC0(skb) &&
				!(features & NETIF_F_FRAGLIST)) ||
			(FUNC2(skb)->nr_frags &&
				!(features & NETIF_F_SG)));
}