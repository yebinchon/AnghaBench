#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int /*<<< orphan*/  (* csum_check ) (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ;} ;
struct ip_vs_conn {scalar_t__ af; int /*<<< orphan*/  dport; int /*<<< orphan*/ * app; } ;
struct TYPE_3__ {int /*<<< orphan*/  dest; } ;
typedef  TYPE_1__ sctp_sctphdr_t ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 unsigned int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct sk_buff*,struct ip_vs_protocol*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *skb,
		  struct ip_vs_protocol *pp, struct ip_vs_conn *cp)
{
	sctp_sctphdr_t *sctph;
	unsigned int sctphoff;

#ifdef CONFIG_IP_VS_IPV6
	if (cp->af == AF_INET6)
		sctphoff = sizeof(struct ipv6hdr);
	else
#endif
		sctphoff = FUNC0(skb);

	/* csum_check requires unshared skb */
	if (!FUNC3(skb, sctphoff + sizeof(*sctph)))
		return 0;

	if (FUNC6(cp->app != NULL)) {
		/* Some checks before mangling */
		if (pp->csum_check && !pp->csum_check(cp->af, skb, pp))
			return 0;

		/* Call application helper if needed */
		if (!FUNC1(cp, skb))
			return 0;
	}

	sctph = (void *) FUNC4(skb) + sctphoff;
	sctph->dest = cp->dport;

	FUNC2(skb, sctph, sctphoff);

	return 1;
}