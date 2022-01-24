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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int ipvs_property; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_conn {int dummy; } ;
typedef  scalar_t__ __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int AF_INET6 ; 
 scalar_t__ IPPROTO_SCTP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int,union nf_inet_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ip_vs_conn*) ; 
 unsigned int NF_ACCEPT ; 
 unsigned int NF_DROP ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_conn*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_conn*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC11(int af, struct sk_buff *skb,
				union nf_inet_addr *snet,
				__u8 protocol, struct ip_vs_conn *cp,
				struct ip_vs_protocol *pp,
				unsigned int offset, unsigned int ihl)
{
	unsigned int verdict = NF_DROP;

	if (FUNC2(cp) != 0) {
		FUNC8("shouldn't reach here, because the box is on the "
		       "half connection in the tun/dr module.\n");
	}

	/* Ensure the checksum is correct */
	if (!FUNC9(skb) && FUNC4(skb, ihl)) {
		/* Failed checksum! */
		FUNC1(1, "Forward ICMP: failed checksum from %s!\n",
			      FUNC0(af, snet));
		goto out;
	}

	if (IPPROTO_TCP == protocol || IPPROTO_UDP == protocol ||
	    IPPROTO_SCTP == protocol)
		offset += 2 * sizeof(__u16);
	if (!FUNC10(skb, offset))
		goto out;

#ifdef CONFIG_IP_VS_IPV6
	if (af == AF_INET6)
		ip_vs_nat_icmp_v6(skb, pp, cp, 1);
	else
#endif
		FUNC5(skb, pp, cp, 1);

	/* do the statistics and put it back */
	FUNC7(cp, skb);

	skb->ipvs_property = 1;
	verdict = NF_ACCEPT;

out:
	FUNC3(cp);

	return verdict;
}