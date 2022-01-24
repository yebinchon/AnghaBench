#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; int /*<<< orphan*/  dev; int /*<<< orphan*/  priority; int /*<<< orphan*/  local_df; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; scalar_t__ header_len; } ;
struct TYPE_5__ {TYPE_3__ dst; } ;
struct rtable {scalar_t__ rt_dst; scalar_t__ rt_gateway; int rt_flags; TYPE_1__ u; } ;
struct iphdr {int ttl; int frag_off; int /*<<< orphan*/  tos; } ;
struct ip_options {int /*<<< orphan*/  srr; scalar_t__ is_strictroute; scalar_t__ router_alert; } ;
struct TYPE_8__ {struct ip_options opt; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMP_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMP_EXC_TTL ; 
 int /*<<< orphan*/  ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  ICMP_SR_FAILED ; 
 int /*<<< orphan*/  ICMP_TIME_EXCEEDED ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IP_DF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 scalar_t__ PACKET_HOST ; 
 int /*<<< orphan*/  PF_INET ; 
 int RTCF_DOREDIRECT ; 
 int /*<<< orphan*/  XFRM_POLICY_FWD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct iphdr*) ; 
 int /*<<< orphan*/  ip_forward_finish ; 
 struct iphdr* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,scalar_t__) ; 
 TYPE_2__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 struct rtable* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*) ; 

int FUNC26(struct sk_buff *skb)
{
	struct iphdr *iph;	/* Our header */
	struct rtable *rt;	/* Route we use */
	struct ip_options * opt	= &(FUNC0(skb)->opt);

	if (FUNC22(skb))
		goto drop;

	if (!FUNC24(NULL, XFRM_POLICY_FWD, skb))
		goto drop;

	if (FUNC0(skb)->opt.router_alert && FUNC10(skb))
		return NET_RX_SUCCESS;

	if (skb->pkt_type != PACKET_HOST)
		goto drop;

	FUNC18(skb);

	/*
	 *	According to the RFC, we must first decrease the TTL field. If
	 *	that reaches zero, we must reply an ICMP control message telling
	 *	that the packet's lifetime expired.
	 */
	if (FUNC12(skb)->ttl <= 1)
		goto too_many_hops;

	if (!FUNC25(skb))
		goto drop;

	rt = FUNC20(skb);

	if (opt->is_strictroute && rt->rt_dst != rt->rt_gateway)
		goto sr_failed;

	if (FUNC23(skb->len > FUNC6(&rt->u.dst) && !FUNC19(skb) &&
		     (FUNC12(skb)->frag_off & FUNC8(IP_DF))) && !skb->local_df) {
		FUNC1(FUNC5(rt->u.dst.dev), IPSTATS_MIB_FRAGFAILS);
		FUNC9(skb, ICMP_DEST_UNREACH, ICMP_FRAG_NEEDED,
			  FUNC7(FUNC6(&rt->u.dst)));
		goto drop;
	}

	/* We are about to mangle packet. Copy it! */
	if (FUNC16(skb, FUNC3(rt->u.dst.dev)+rt->u.dst.header_len))
		goto drop;
	iph = FUNC12(skb);

	/* Decrease ttl after skb cow done */
	FUNC11(iph);

	/*
	 *	We now generate an ICMP HOST REDIRECT giving the route
	 *	we calculated.
	 */
	if (rt->rt_flags&RTCF_DOREDIRECT && !opt->srr && !FUNC21(skb))
		FUNC13(skb);

	skb->priority = FUNC15(iph->tos);

	return FUNC4(PF_INET, NF_INET_FORWARD, skb, skb->dev, rt->u.dst.dev,
		       ip_forward_finish);

sr_failed:
	/*
	 *	Strict routing permits no gatewaying
	 */
	 FUNC9(skb, ICMP_DEST_UNREACH, ICMP_SR_FAILED, 0);
	 goto drop;

too_many_hops:
	/* Tell the sender its packet died... */
	FUNC2(FUNC5(FUNC17(skb)->dev), IPSTATS_MIB_INHDRERRORS);
	FUNC9(skb, ICMP_TIME_EXCEEDED, ICMP_EXC_TTL, 0);
drop:
	FUNC14(skb);
	return NET_RX_DROP;
}