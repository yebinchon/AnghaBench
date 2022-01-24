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
struct sk_buff {int protocol; int /*<<< orphan*/  dev; scalar_t__ ipvs_property; } ;
struct net_device {int dummy; } ;
struct ip_vs_protocol {scalar_t__ protocol; struct ip_vs_conn* (* conn_out_get ) (int,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dont_defrag; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int /*<<< orphan*/  len; int /*<<< orphan*/  saddr; } ;
struct ip_vs_conn {int dummy; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int frag_off; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int ETH_P_IP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_PORT_UNREACH ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PORT_UNREACH ; 
 scalar_t__ IPPROTO_ICMP ; 
 scalar_t__ IPPROTO_ICMPV6 ; 
 scalar_t__ IPPROTO_SCTP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_DEFRAG_VS_OUT ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int,struct ip_vs_protocol*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 unsigned int NF_STOLEN ; 
 unsigned int FUNC2 (int,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct ip_vs_iphdr*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,int*) ; 
 int FUNC11 (struct sk_buff*,int*) ; 
 struct ip_vs_protocol* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct ip_vs_conn* FUNC17 (int,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_ip_vs_nat_icmp_send ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static unsigned int
FUNC19(unsigned int hooknum, struct sk_buff *skb,
	  const struct net_device *in, const struct net_device *out,
	  int (*okfn)(struct sk_buff *))
{
	struct ip_vs_iphdr iph;
	struct ip_vs_protocol *pp;
	struct ip_vs_conn *cp;
	int af;

	FUNC0(11);

	af = (skb->protocol == FUNC3(ETH_P_IP)) ? AF_INET : AF_INET6;

	if (skb->ipvs_property)
		return NF_ACCEPT;

	FUNC7(af, FUNC16(skb), &iph);
#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6) {
		if (unlikely(iph.protocol == IPPROTO_ICMPV6)) {
			int related, verdict = ip_vs_out_icmp_v6(skb, &related);

			if (related)
				return verdict;
			ip_vs_fill_iphdr(af, skb_network_header(skb), &iph);
		}
	} else
#endif
		if (FUNC18(iph.protocol == IPPROTO_ICMP)) {
			int related, verdict = FUNC10(skb, &related);

			if (related)
				return verdict;
			FUNC7(af, FUNC16(skb), &iph);
		}

	pp = FUNC12(iph.protocol);
	if (FUNC18(!pp))
		return NF_ACCEPT;

	/* reassemble IP fragments */
#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6) {
		if (unlikely(iph.protocol == IPPROTO_ICMPV6)) {
			int related, verdict = ip_vs_out_icmp_v6(skb, &related);

			if (related)
				return verdict;

			ip_vs_fill_iphdr(af, skb_network_header(skb), &iph);
		}
	} else
#endif
		if (FUNC18(FUNC6(skb)->frag_off & FUNC3(IP_MF|IP_OFFSET) &&
			     !pp->dont_defrag)) {
			if (FUNC8(skb, IP_DEFRAG_VS_OUT))
				return NF_STOLEN;

			FUNC7(af, FUNC16(skb), &iph);
		}

	/*
	 * Check if the packet belongs to an existing entry
	 */
	cp = pp->conn_out_get(af, skb, pp, &iph, iph.len, 0);

	if (FUNC18(!cp)) {
		if (sysctl_ip_vs_nat_icmp_send &&
		    (pp->protocol == IPPROTO_TCP ||
		     pp->protocol == IPPROTO_UDP ||
		     pp->protocol == IPPROTO_SCTP)) {
			__be16 _ports[2], *pptr;

			pptr = FUNC15(skb, iph.len,
						  sizeof(_ports), _ports);
			if (pptr == NULL)
				return NF_ACCEPT;	/* Not for me */
			if (FUNC9(af, iph.protocol,
						      &iph.saddr,
						      pptr[0])) {
				/*
				 * Notify the real server: there is no
				 * existing entry if it is not RST
				 * packet or not TCP packet.
				 */
				if ((iph.protocol != IPPROTO_TCP &&
				     iph.protocol != IPPROTO_SCTP)
				     || ((iph.protocol == IPPROTO_TCP
					  && !FUNC14(skb, iph.len))
					 || (iph.protocol == IPPROTO_SCTP
						&& !FUNC13(skb,
							iph.len)))) {
#ifdef CONFIG_IP_VS_IPV6
					if (af == AF_INET6)
						icmpv6_send(skb,
							    ICMPV6_DEST_UNREACH,
							    ICMPV6_PORT_UNREACH,
							    0, skb->dev);
					else
#endif
						FUNC4(skb,
							  ICMP_DEST_UNREACH,
							  ICMP_PORT_UNREACH, 0);
					return NF_DROP;
				}
			}
		}
		FUNC1(12, pp, skb, 0,
			      "packet continues traversal as normal");
		return NF_ACCEPT;
	}

	return FUNC2(af, skb, pp, cp, iph.len);
}