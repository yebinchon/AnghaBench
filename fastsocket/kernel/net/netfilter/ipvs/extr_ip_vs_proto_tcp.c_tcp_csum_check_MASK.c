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
struct sk_buff {int ip_summed; int /*<<< orphan*/  csum; int /*<<< orphan*/  len; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  nexthdr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int AF_INET6 ; 
#define  CHECKSUM_COMPLETE 129 
#define  CHECKSUM_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(int af, struct sk_buff *skb, struct ip_vs_protocol *pp)
{
	unsigned int tcphoff;

#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6)
		tcphoff = sizeof(struct ipv6hdr);
	else
#endif
		tcphoff = FUNC4(skb);

	switch (skb->ip_summed) {
	case CHECKSUM_NONE:
		skb->csum = FUNC6(skb, tcphoff, skb->len - tcphoff, 0);
	case CHECKSUM_COMPLETE:
#ifdef CONFIG_IP_VS_IPV6
		if (af == AF_INET6) {
			if (csum_ipv6_magic(&ipv6_hdr(skb)->saddr,
					    &ipv6_hdr(skb)->daddr,
					    skb->len - tcphoff,
					    ipv6_hdr(skb)->nexthdr,
					    skb->csum)) {
				IP_VS_DBG_RL_PKT(0, pp, skb, 0,
						 "Failed checksum for");
				return 0;
			}
		} else
#endif
			if (FUNC2(FUNC3(skb)->saddr,
					      FUNC3(skb)->daddr,
					      skb->len - tcphoff,
					      FUNC3(skb)->protocol,
					      skb->csum)) {
				FUNC0(0, pp, skb, 0,
						 "Failed checksum for");
				return 0;
			}
		break;
	default:
		/* No need to checksum. */
		break;
	}

	return 1;
}