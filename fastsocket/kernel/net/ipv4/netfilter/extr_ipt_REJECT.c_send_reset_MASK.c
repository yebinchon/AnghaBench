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
struct tcphdr {int rst; int doff; int ack; scalar_t__ syn; scalar_t__ fin; int /*<<< orphan*/  check; int /*<<< orphan*/  seq; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  ip_summed; } ;
struct iphdr {int frag_off; int version; int ihl; int /*<<< orphan*/  ttl; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; scalar_t__ check; int /*<<< orphan*/  protocol; scalar_t__ id; scalar_t__ tos; } ;
typedef  int /*<<< orphan*/  _otcph ;
struct TYPE_2__ {int rt_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  IP_OFFSET ; 
 scalar_t__ LL_MAX_HEADER ; 
 int /*<<< orphan*/  RTAX_HOPLIMIT ; 
 int RTCF_BROADCAST ; 
 int RTCF_MULTICAST ; 
 int /*<<< orphan*/  RTN_UNSPEC ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcphdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcphdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct tcphdr* FUNC18 (struct sk_buff*,scalar_t__,int,struct tcphdr*) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 TYPE_1__* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC24(struct sk_buff *oldskb, int hook)
{
	struct sk_buff *nskb;
	const struct iphdr *oiph;
	struct iphdr *niph;
	const struct tcphdr *oth;
	struct tcphdr _otcph, *tcph;

	/* IP header checks: fragment. */
	if (FUNC7(oldskb)->frag_off & FUNC6(IP_OFFSET))
		return;

	oth = FUNC18(oldskb, FUNC8(oldskb),
				 sizeof(_otcph), &_otcph);
	if (oth == NULL)
		return;

	/* No RST for RST. */
	if (oth->rst)
		return;

	if (FUNC22(oldskb)->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))
		return;

	/* Check checksum */
	if (FUNC14(oldskb, hook, FUNC8(oldskb), IPPROTO_TCP))
		return;
	oiph = FUNC7(oldskb);

	nskb = FUNC0(sizeof(struct iphdr) + sizeof(struct tcphdr) +
			 LL_MAX_HEADER, GFP_ATOMIC);
	if (!nskb)
		return;

	FUNC20(nskb, LL_MAX_HEADER);

	FUNC21(nskb);
	niph = (struct iphdr *)FUNC19(nskb, sizeof(struct iphdr));
	niph->version	= 4;
	niph->ihl	= sizeof(struct iphdr) / 4;
	niph->tos	= 0;
	niph->id	= 0;
	niph->frag_off	= FUNC6(IP_DF);
	niph->protocol	= IPPROTO_TCP;
	niph->check	= 0;
	niph->saddr	= oiph->daddr;
	niph->daddr	= oiph->saddr;

	tcph = (struct tcphdr *)FUNC19(nskb, sizeof(struct tcphdr));
	FUNC12(tcph, 0, sizeof(*tcph));
	tcph->source	= oth->dest;
	tcph->dest	= oth->source;
	tcph->doff	= sizeof(struct tcphdr) / 4;

	if (oth->ack)
		tcph->seq = oth->ack_seq;
	else {
		tcph->ack_seq = FUNC5(FUNC15(oth->seq) + oth->syn + oth->fin +
				      oldskb->len - FUNC8(oldskb) -
				      (oth->doff << 2));
		tcph->ack = 1;
	}

	tcph->rst	= 1;
	tcph->check	= FUNC23(sizeof(struct tcphdr),
				       niph->saddr, niph->daddr,
				       FUNC1(tcph,
						    sizeof(struct tcphdr), 0));

	/* ip_route_me_harder expects skb->dst to be set */
	FUNC17(nskb, FUNC2(FUNC16(oldskb)));

	if (FUNC10(nskb, RTN_UNSPEC))
		goto free_nskb;

	niph->ttl	= FUNC3(FUNC16(nskb), RTAX_HOPLIMIT);
	nskb->ip_summed = CHECKSUM_NONE;

	/* "Never happens" */
	if (nskb->len > FUNC4(FUNC16(nskb)))
		goto free_nskb;

	FUNC13(nskb, oldskb);

	FUNC9(nskb);
	return;

 free_nskb:
	FUNC11(nskb);
}