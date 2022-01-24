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
struct net_device {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ daddr; } ;

/* Variables and functions */
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 unsigned int FUNC1 (unsigned int,struct sk_buff*,struct net_device const*,struct net_device const*,int (*) (struct sk_buff*)) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int
FUNC3(unsigned int hooknum,
	  struct sk_buff *skb,
	  const struct net_device *in,
	  const struct net_device *out,
	  int (*okfn)(struct sk_buff *))
{
	unsigned int ret;
	__be32 daddr = FUNC0(skb)->daddr;

	ret = FUNC1(hooknum, skb, in, out, okfn);
	if (ret != NF_DROP && ret != NF_STOLEN &&
	    daddr != FUNC0(skb)->daddr)
		FUNC2(skb);

	return ret;
}