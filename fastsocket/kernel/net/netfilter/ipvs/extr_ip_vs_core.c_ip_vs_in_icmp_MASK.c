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
union nf_inet_addr {int /*<<< orphan*/  ip; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int frag_off; int ihl; scalar_t__ type; scalar_t__ protocol; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip_vs_protocol {struct ip_vs_conn* (* conn_out_get ) (int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ;struct ip_vs_conn* (* conn_in_get ) (int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ;scalar_t__ dont_defrag; } ;
struct ip_vs_iphdr {int dummy; } ;
struct ip_vs_conn {int dummy; } ;
struct icmphdr {int frag_off; int ihl; scalar_t__ type; scalar_t__ protocol; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
typedef  int /*<<< orphan*/  _icmph ;
typedef  int /*<<< orphan*/  _ciph ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ ICMP_DEST_UNREACH ; 
 scalar_t__ ICMP_SOURCE_QUENCH ; 
 scalar_t__ ICMP_TIME_EXCEEDED ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  IP_DEFRAG_VS_FWD ; 
 int /*<<< orphan*/  IP_DEFRAG_VS_IN ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int,struct ip_vs_protocol*,struct sk_buff*,unsigned int,char*) ; 
 int NF_ACCEPT ; 
 int NF_DROP ; 
 unsigned int NF_INET_LOCAL_IN ; 
 int NF_STOLEN ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_conn*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,union nf_inet_addr*,scalar_t__,struct ip_vs_conn*,struct ip_vs_protocol*,unsigned int,unsigned int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct iphdr*) ; 
 struct iphdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct iphdr*,struct ip_vs_iphdr*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct sk_buff*,struct ip_vs_conn*,struct ip_vs_protocol*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_vs_conn*,struct sk_buff*) ; 
 struct ip_vs_protocol* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct iphdr* FUNC15 (struct sk_buff*,unsigned int,int,struct iphdr*) ; 
 struct ip_vs_conn* FUNC16 (int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ; 
 struct ip_vs_conn* FUNC17 (int /*<<< orphan*/ ,struct sk_buff*,struct ip_vs_protocol*,struct ip_vs_iphdr*,unsigned int,int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int
FUNC19(struct sk_buff *skb, int *related, unsigned int hooknum)
{
	struct iphdr *iph;
	struct icmphdr	_icmph, *ic;
	struct iphdr	_ciph, *cih;	/* The ip header contained within the ICMP */
	struct ip_vs_iphdr ciph;
	struct ip_vs_conn *cp;
	struct ip_vs_protocol *pp;
	unsigned int offset, ihl, verdict;
	union nf_inet_addr snet;

	*related = 1;

	/* reassemble IP fragments */
	if (FUNC6(skb)->frag_off & FUNC4(IP_MF | IP_OFFSET)) {
		if (FUNC9(skb, hooknum == NF_INET_LOCAL_IN ?
					    IP_DEFRAG_VS_IN : IP_DEFRAG_VS_FWD))
			return NF_STOLEN;
	}

	iph = FUNC6(skb);
	offset = ihl = iph->ihl * 4;
	ic = FUNC15(skb, offset, sizeof(_icmph), &_icmph);
	if (ic == NULL)
		return NF_DROP;

	FUNC0(12, "Incoming ICMP (%d,%d) %pI4->%pI4\n",
		  ic->type, FUNC13(FUNC5(ic)),
		  &iph->saddr, &iph->daddr);

	/*
	 * Work through seeing if this is for us.
	 * These checks are supposed to be in an order that means easy
	 * things are checked first to speed up processing.... however
	 * this means that some packets will manage to get a long way
	 * down this stack and then be rejected, but that's life.
	 */
	if ((ic->type != ICMP_DEST_UNREACH) &&
	    (ic->type != ICMP_SOURCE_QUENCH) &&
	    (ic->type != ICMP_TIME_EXCEEDED)) {
		*related = 0;
		return NF_ACCEPT;
	}

	/* Now find the contained IP header */
	offset += sizeof(_icmph);
	cih = FUNC15(skb, offset, sizeof(_ciph), &_ciph);
	if (cih == NULL)
		return NF_ACCEPT; /* The packet looks wrong, ignore */

	pp = FUNC12(cih->protocol);
	if (!pp)
		return NF_ACCEPT;

	/* Is the embedded protocol header present? */
	if (FUNC18(cih->frag_off & FUNC4(IP_OFFSET) &&
		     pp->dont_defrag))
		return NF_ACCEPT;

	FUNC1(11, pp, skb, offset, "Checking incoming ICMP for");

	offset += cih->ihl * 4;

	FUNC8(AF_INET, cih, &ciph);
	/* The embedded headers contain source and dest in reverse order */
	cp = pp->conn_in_get(AF_INET, skb, pp, &ciph, offset, 1);
	if (!cp) {
		/* The packet could also belong to a local client */
		cp = pp->conn_out_get(AF_INET, skb, pp, &ciph, offset, 1);
		if (cp) {
			snet.ip = iph->saddr;
			return FUNC3(AF_INET, skb, &snet,
						    cih->protocol, cp, pp,
						    offset, ihl);
		}
		return NF_ACCEPT;
	}

	verdict = NF_DROP;

	/* Ensure the checksum is correct */
	if (!FUNC14(skb) && FUNC7(skb, ihl)) {
		/* Failed checksum! */
		FUNC0(1, "Incoming ICMP: failed checksum from %pI4!\n",
			  &iph->saddr);
		goto out;
	}

	/* do the statistics and put it back */
	FUNC11(cp, skb);
	if (IPPROTO_TCP == cih->protocol || IPPROTO_UDP == cih->protocol)
		offset += 2 * sizeof(__u16);
	verdict = FUNC10(skb, cp, pp, offset);
	/* do not touch skb anymore */

  out:
	FUNC2(cp);

	return verdict;
}