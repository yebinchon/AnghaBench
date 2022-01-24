#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct udphdr {int /*<<< orphan*/  check; } ;
struct tcphdr {int /*<<< orphan*/  check; } ;
struct tcf_result {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  drops; } ;
struct TYPE_5__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; } ;
struct TYPE_4__ {int /*<<< orphan*/  lastuse; } ;
struct tcf_nat {int old_addr; int new_addr; int mask; int flags; int tcf_action; int /*<<< orphan*/  tcf_lock; TYPE_3__ tcf_qstats; TYPE_2__ tcf_bstats; TYPE_1__ tcf_tm; } ;
struct tc_action {struct tcf_nat* priv; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct iphdr {int saddr; int daddr; int ihl; int frag_off; int protocol; int /*<<< orphan*/  check; } ;
struct icmphdr {int /*<<< orphan*/  checksum; int /*<<< orphan*/  type; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CSUM_MANGLED_0 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_PARAMETERPROB ; 
 int /*<<< orphan*/  ICMP_TIME_EXCEEDED ; 
#define  IPPROTO_ICMP 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  IP_OFFSET ; 
 int TCA_NAT_FLAG_EGRESS ; 
 int TC_ACT_SHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*,int,int,int) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct tc_action *a,
		   struct tcf_result *res)
{
	struct tcf_nat *p = a->priv;
	struct iphdr *iph;
	__be32 old_addr;
	__be32 new_addr;
	__be32 mask;
	__be32 addr;
	int egress;
	int action;
	int ihl;

	FUNC10(&p->tcf_lock);

	p->tcf_tm.lastuse = jiffies;
	old_addr = p->old_addr;
	new_addr = p->new_addr;
	mask = p->mask;
	egress = p->flags & TCA_NAT_FLAG_EGRESS;
	action = p->tcf_action;

	p->tcf_bstats.bytes += FUNC6(skb);
	p->tcf_bstats.packets++;

	FUNC11(&p->tcf_lock);

	if (FUNC12(action == TC_ACT_SHOT))
		goto drop;

	if (!FUNC5(skb, sizeof(*iph)))
		goto drop;

	iph = FUNC3(skb);

	if (egress)
		addr = iph->saddr;
	else
		addr = iph->daddr;

	if (!((old_addr ^ addr) & mask)) {
		if (FUNC8(skb) &&
		    !FUNC7(skb, sizeof(*iph)) &&
		    FUNC4(skb, 0, 0, GFP_ATOMIC))
			goto drop;

		new_addr &= mask;
		new_addr |= addr & ~mask;

		/* Rewrite IP header */
		iph = FUNC3(skb);
		if (egress)
			iph->saddr = new_addr;
		else
			iph->daddr = new_addr;

		FUNC0(&iph->check, addr, new_addr);
	}

	ihl = iph->ihl * 4;

	/* It would be nice to share code with stateful NAT. */
	switch (iph->frag_off & FUNC1(IP_OFFSET) ? 0 : iph->protocol) {
	case IPPROTO_TCP:
	{
		struct tcphdr *tcph;

		if (!FUNC5(skb, ihl + sizeof(*tcph)) ||
		    (FUNC8(skb) &&
		     !FUNC7(skb, ihl + sizeof(*tcph)) &&
		     FUNC4(skb, 0, 0, GFP_ATOMIC)))
			goto drop;

		tcph = (void *)(FUNC9(skb) + ihl);
		FUNC2(&tcph->check, skb, addr, new_addr, 1);
		break;
	}
	case IPPROTO_UDP:
	{
		struct udphdr *udph;

		if (!FUNC5(skb, ihl + sizeof(*udph)) ||
		    (FUNC8(skb) &&
		     !FUNC7(skb, ihl + sizeof(*udph)) &&
		     FUNC4(skb, 0, 0, GFP_ATOMIC)))
			goto drop;

		udph = (void *)(FUNC9(skb) + ihl);
		if (udph->check || skb->ip_summed == CHECKSUM_PARTIAL) {
			FUNC2(&udph->check, skb, addr,
						 new_addr, 1);
			if (!udph->check)
				udph->check = CSUM_MANGLED_0;
		}
		break;
	}
	case IPPROTO_ICMP:
	{
		struct icmphdr *icmph;

		if (!FUNC5(skb, ihl + sizeof(*icmph) + sizeof(*iph)))
			goto drop;

		icmph = (void *)(FUNC9(skb) + ihl);

		if ((icmph->type != ICMP_DEST_UNREACH) &&
		    (icmph->type != ICMP_TIME_EXCEEDED) &&
		    (icmph->type != ICMP_PARAMETERPROB))
			break;

		iph = (void *)(icmph + 1);
		if (egress)
			addr = iph->daddr;
		else
			addr = iph->saddr;

		if ((old_addr ^ addr) & mask)
			break;

		if (FUNC8(skb) &&
		    !FUNC7(skb,
					ihl + sizeof(*icmph) + sizeof(*iph)) &&
		    FUNC4(skb, 0, 0, GFP_ATOMIC))
			goto drop;

		icmph = (void *)(FUNC9(skb) + ihl);
		iph = (void *)(icmph + 1);

		new_addr &= mask;
		new_addr |= addr & ~mask;

		/* XXX Fix up the inner checksums. */
		if (egress)
			iph->daddr = new_addr;
		else
			iph->saddr = new_addr;

		FUNC2(&icmph->checksum, skb, addr, new_addr,
					 1);
		break;
	}
	default:
		break;
	}

	return action;

drop:
	FUNC10(&p->tcf_lock);
	p->tcf_qstats.drops++;
	FUNC11(&p->tcf_lock);
	return TC_ACT_SHOT;
}