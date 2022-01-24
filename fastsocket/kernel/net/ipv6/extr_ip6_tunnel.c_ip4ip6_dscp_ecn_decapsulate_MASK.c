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
struct ipv6hdr {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct ip6_tnl {TYPE_1__ parms; } ;
typedef  int __u8 ;

/* Variables and functions */
 int INET_ECN_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int IP6_TNL_F_RCV_DSCP_COPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct ipv6hdr*) ; 

__attribute__((used)) static void FUNC5(struct ip6_tnl *t,
					struct ipv6hdr *ipv6h,
					struct sk_buff *skb)
{
	__u8 dsfield = FUNC4(ipv6h) & ~INET_ECN_MASK;

	if (t->parms.flags & IP6_TNL_F_RCV_DSCP_COPY)
		FUNC3(FUNC2(skb), INET_ECN_MASK, dsfield);

	if (FUNC0(dsfield))
		FUNC1(FUNC2(skb));
}