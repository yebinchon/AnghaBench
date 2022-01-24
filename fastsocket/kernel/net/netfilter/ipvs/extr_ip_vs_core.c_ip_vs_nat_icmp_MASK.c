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
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct iphdr {int ihl; scalar_t__ protocol; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip_vs_protocol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  ip; } ;
struct ip_vs_conn {int /*<<< orphan*/  dport; int /*<<< orphan*/  vport; TYPE_2__ daddr; TYPE_1__ vaddr; } ;
struct icmphdr {scalar_t__ checksum; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 scalar_t__ IPPROTO_SCTP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int,struct ip_vs_protocol*,struct sk_buff*,int,char*) ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 

void FUNC5(struct sk_buff *skb, struct ip_vs_protocol *pp,
		    struct ip_vs_conn *cp, int inout)
{
	struct iphdr *iph	 = FUNC1(skb);
	unsigned int icmp_offset = iph->ihl*4;
	struct icmphdr *icmph	 = (struct icmphdr *)(FUNC4(skb) +
						      icmp_offset);
	struct iphdr *ciph	 = (struct iphdr *)(icmph + 1);

	if (inout) {
		iph->saddr = cp->vaddr.ip;
		FUNC2(iph);
		ciph->daddr = cp->vaddr.ip;
		FUNC2(ciph);
	} else {
		iph->daddr = cp->daddr.ip;
		FUNC2(iph);
		ciph->saddr = cp->daddr.ip;
		FUNC2(ciph);
	}

	/* the TCP/UDP/SCTP port */
	if (IPPROTO_TCP == ciph->protocol || IPPROTO_UDP == ciph->protocol ||
	    IPPROTO_SCTP == ciph->protocol) {
		__be16 *ports = (void *)ciph + ciph->ihl*4;

		if (inout)
			ports[1] = cp->vport;
		else
			ports[0] = cp->dport;
	}

	/* And finally the ICMP checksum */
	icmph->checksum = 0;
	icmph->checksum = FUNC3(skb, icmp_offset);
	skb->ip_summed = CHECKSUM_UNNECESSARY;

	if (inout)
		FUNC0(11, pp, skb, (void *)ciph - (void *)iph,
			"Forwarding altered outgoing ICMP");
	else
		FUNC0(11, pp, skb, (void *)ciph - (void *)iph,
			"Forwarding altered incoming ICMP");
}