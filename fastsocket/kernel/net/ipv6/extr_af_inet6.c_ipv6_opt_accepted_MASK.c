#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ odstopts; scalar_t__ dstopts; scalar_t__ osrcrt; scalar_t__ srcrt; scalar_t__ rxflow; scalar_t__ ohopopts; scalar_t__ hopopts; } ;
struct TYPE_4__ {TYPE_1__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_2__ rxopt; } ;
struct inet6_skb_parm {scalar_t__ dst0; scalar_t__ dst1; scalar_t__ srcrt; scalar_t__ hop; } ;
typedef  int __be32 ;

/* Variables and functions */
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 int IPV6_FLOWINFO_MASK ; 
 struct ipv6_pinfo* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	struct ipv6_pinfo *np = FUNC1(sk);
	struct inet6_skb_parm *opt = FUNC0(skb);

	if (np->rxopt.all) {
		if ((opt->hop && (np->rxopt.bits.hopopts ||
				  np->rxopt.bits.ohopopts)) ||
		    ((IPV6_FLOWINFO_MASK &
		      *(__be32 *)FUNC2(skb)) &&
		     np->rxopt.bits.rxflow) ||
		    (opt->srcrt && (np->rxopt.bits.srcrt ||
		     np->rxopt.bits.osrcrt)) ||
		    ((opt->dst1 || opt->dst0) &&
		     (np->rxopt.bits.dstopts || np->rxopt.bits.odstopts)))
			return 1;
	}
	return 0;
}