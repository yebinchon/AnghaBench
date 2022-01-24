#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int ipvs_property; } ;
struct ip_vs_protocol {int /*<<< orphan*/  (* snat_handler ) (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct ip_vs_conn {TYPE_1__ vaddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IP_VS_DIR_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  RTN_LOCAL ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_conn*,int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_protocol*) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*) ; 

__attribute__((used)) static unsigned int
FUNC13(int af, struct sk_buff *skb, struct ip_vs_protocol *pp,
		struct ip_vs_conn *cp, int ihl)
{
	FUNC0(11, pp, skb, 0, "Outgoing packet");

	if (!FUNC11(skb, ihl))
		goto drop;

	/* mangle the packet */
	if (pp->snat_handler && !pp->snat_handler(skb, pp, cp))
		goto drop;

#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6)
		ipv6_hdr(skb)->saddr = cp->vaddr.in6;
	else
#endif
	{
		FUNC3(skb)->saddr = cp->vaddr.ip;
		FUNC5(FUNC3(skb));
	}

	/* For policy routing, packets originating from this
	 * machine itself may be routed differently to packets
	 * passing through.  We want this packet to be routed as
	 * if it came from this machine itself.  So re-compute
	 * the routing information.
	 */
#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6) {
		if (ip6_route_me_harder(skb) != 0)
			goto drop;
	} else
#endif
		if (FUNC4(skb, RTN_LOCAL) != 0)
			goto drop;

	FUNC0(10, pp, skb, 0, "After SNAT");

	FUNC7(cp, skb);
	FUNC8(cp, IP_VS_DIR_OUTPUT, skb, pp);
	FUNC6(cp);

	skb->ipvs_property = 1;

	FUNC1(11);
	return NF_ACCEPT;

drop:
	FUNC6(cp);
	FUNC10(skb);
	return NF_STOLEN;
}