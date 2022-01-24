#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ len; TYPE_3__* dev; int /*<<< orphan*/  local_df; } ;
struct rt6_info {int rt6i_flags; } ;
struct TYPE_9__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct neighbour {int /*<<< orphan*/  primary_key; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {int hop_limit; int /*<<< orphan*/  saddr; struct in6_addr daddr; } ;
struct inet6_skb_parm {int ra; scalar_t__ srcrt; scalar_t__ frag_max_size; } ;
struct dst_entry {TYPE_3__* dev; struct neighbour* neighbour; } ;
struct TYPE_10__ {int /*<<< orphan*/  hard_header_len; } ;
struct TYPE_8__ {scalar_t__ forwarding; scalar_t__ proxy_ndp; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_EXC_HOPLIMIT ; 
 int /*<<< orphan*/  ICMPV6_NOT_NEIGHBOUR ; 
 int /*<<< orphan*/  ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_FRAGFAILS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INADDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INTOOBIGERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTFORWDATAGRAMS ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_LOOPBACK ; 
 int IPV6_ADDR_MULTICAST ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NF_INET_FORWARD ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int RTF_GATEWAY ; 
 int /*<<< orphan*/  XFRM_POLICY_FWD ; 
 struct net* FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_entry*) ; 
 int /*<<< orphan*/  ip6_forward_finish ; 
 int FUNC9 (struct sk_buff*) ; 
 int FUNC10 (struct sk_buff*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  nd_tbl ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,struct neighbour*,struct in6_addr*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct net*,struct in6_addr*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int* FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct dst_entry*,int) ; 

int FUNC26(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC17(skb);
	struct ipv6hdr *hdr = FUNC12(skb);
	struct inet6_skb_parm *opt = FUNC0(skb);
	struct net *net = FUNC4(dst->dev);

	if (net->ipv6.devconf_all->forwarding == 0)
		goto error;

	if (FUNC22(skb))
		goto drop;

	if (!FUNC23(NULL, XFRM_POLICY_FWD, skb)) {
		FUNC1(net, FUNC8(dst), IPSTATS_MIB_INDISCARDS);
		goto drop;
	}

	FUNC18(skb);

	/*
	 *	We DO NOT make any processing on
	 *	RA packets, pushing them to user level AS IS
	 *	without ane WARRANTY that application will be able
	 *	to interpret them. The reason is that we
	 *	cannot make anything clever here.
	 *
	 *	We are not end-node, so that if packet contains
	 *	AH/ESP, we cannot make anything.
	 *	Defragmentation also would be mistake, RA packets
	 *	cannot be fragmented, because there is no warranty
	 *	that different fragments will go along one path. --ANK
	 */
	if (opt->ra) {
		u8 *ptr = FUNC20(skb) + opt->ra;
		if (FUNC7(skb, (ptr[2]<<8) + ptr[3]))
			return 0;
	}

	/*
	 *	check and decrement ttl
	 */
	if (hdr->hop_limit <= 1) {
		/* Force OUTPUT device used as source address */
		skb->dev = dst->dev;
		FUNC6(skb, ICMPV6_TIME_EXCEED, ICMPV6_EXC_HOPLIMIT,
			    0, skb->dev);
		FUNC2(net,
				 FUNC8(dst), IPSTATS_MIB_INHDRERRORS);

		FUNC13(skb);
		return -ETIMEDOUT;
	}

	/* XXX: idev->cnf.proxy_ndp? */
	if (net->ipv6.devconf_all->proxy_ndp &&
	    FUNC15(&nd_tbl, net, &hdr->daddr, skb->dev, 0)) {
		int proxied = FUNC9(skb);
		if (proxied > 0)
			return FUNC10(skb);
		else if (proxied < 0) {
			FUNC1(net, FUNC8(dst),
				      IPSTATS_MIB_INDISCARDS);
			goto drop;
		}
	}

	if (!FUNC24(skb)) {
		FUNC1(net, FUNC8(dst), IPSTATS_MIB_INDISCARDS);
		goto drop;
	}
	dst = FUNC17(skb);

	/* IPv6 specs say nothing about it, but it is clear that we cannot
	   send redirects to source routed frames.
	   We don't send redirects to frames decapsulated from IPsec.
	 */
	if (skb->dev == dst->dev && dst->neighbour && opt->srcrt == 0 &&
	    !FUNC21(skb)) {
		struct in6_addr *target = NULL;
		struct rt6_info *rt;
		struct neighbour *n = dst->neighbour;

		/*
		 *	incoming and outgoing devices are the same
		 *	send a redirect.
		 */

		rt = (struct rt6_info *) dst;
		if ((rt->rt6i_flags & RTF_GATEWAY))
			target = (struct in6_addr*)&n->primary_key;
		else
			target = &hdr->daddr;

		/* Limit redirects both by destination (here)
		   and by source (inside ndisc_send_redirect)
		 */
		if (FUNC25(dst, 1*HZ))
			FUNC14(skb, n, target);
	} else {
		int addrtype = FUNC11(&hdr->saddr);

		/* This check is security critical. */
		if (addrtype == IPV6_ADDR_ANY ||
		    addrtype & (IPV6_ADDR_MULTICAST | IPV6_ADDR_LOOPBACK))
			goto error;
		if (addrtype & IPV6_ADDR_LINKLOCAL) {
			FUNC6(skb, ICMPV6_DEST_UNREACH,
				ICMPV6_NOT_NEIGHBOUR, 0, skb->dev);
			goto error;
		}
	}

	if ((!skb->local_df && skb->len > FUNC5(dst) && !FUNC19(skb)) ||
	    (FUNC0(skb)->frag_max_size && FUNC0(skb)->frag_max_size > FUNC5(dst))) {
		/* Again, force OUTPUT device used as source address */
		skb->dev = dst->dev;
		FUNC6(skb, ICMPV6_PKT_TOOBIG, 0, FUNC5(dst), skb->dev);
		FUNC2(net,
				 FUNC8(dst), IPSTATS_MIB_INTOOBIGERRORS);
		FUNC2(net,
				 FUNC8(dst), IPSTATS_MIB_FRAGFAILS);
		FUNC13(skb);
		return -EMSGSIZE;
	}

	if (FUNC16(skb, dst->dev->hard_header_len)) {
		FUNC1(net, FUNC8(dst), IPSTATS_MIB_OUTDISCARDS);
		goto drop;
	}

	hdr = FUNC12(skb);

	/* Mangling hops number delayed to point after skb COW */

	hdr->hop_limit--;

	FUNC2(net, FUNC8(dst), IPSTATS_MIB_OUTFORWDATAGRAMS);
	return FUNC3(PF_INET6, NF_INET_FORWARD, skb, skb->dev, dst->dev,
		       ip6_forward_finish);

error:
	FUNC2(net, FUNC8(dst), IPSTATS_MIB_INADDRERRORS);
drop:
	FUNC13(skb);
	return -EINVAL;
}