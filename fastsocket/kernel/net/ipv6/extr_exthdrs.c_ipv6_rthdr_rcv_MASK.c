#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfrm_address_t ;
struct sk_buff {scalar_t__ pkt_type; int transport_header; scalar_t__ ip_summed; int data; TYPE_7__* dev; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct TYPE_11__ {TYPE_1__* devconf_all; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6_rt_hdr {int segments_left; int type; int hdrlen; int /*<<< orphan*/  nexthdr; } ;
struct inet6_skb_parm {int /*<<< orphan*/ * nhoff; scalar_t__ dst1; scalar_t__ dst0; int /*<<< orphan*/  srcrt; int /*<<< orphan*/  lastopt; } ;
struct TYPE_12__ {int accept_source_route; } ;
struct inet6_dev {TYPE_3__ cnf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {int hop_limit; struct in6_addr daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_13__ {TYPE_7__* dev; scalar_t__ error; } ;
struct TYPE_10__ {int accept_source_route; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 scalar_t__ CHECKSUM_NONE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ICMPV6_EXC_HOPLIMIT ; 
 int /*<<< orphan*/  ICMPV6_HDR_FIELD ; 
 int /*<<< orphan*/  ICMPV6_TIME_EXCEED ; 
 int IFF_LOOPBACK ; 
 struct inet6_skb_parm* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_ROUTING ; 
 int /*<<< orphan*/  IPSTATS_MIB_INADDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_INHDRERRORS ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTDISCARDS ; 
#define  IPV6_SRCRT_TYPE_2 128 
 scalar_t__ PACKET_HOST ; 
 struct net* FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 struct inet6_dev* FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC11 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC12 (struct net*,struct in6_addr*) ; 
 TYPE_5__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 TYPE_4__* FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,int) ; 
 int* FUNC23 (struct sk_buff*) ; 
 scalar_t__ FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct sk_buff *skb)
{
	struct inet6_skb_parm *opt = FUNC0(skb);
	struct in6_addr *addr = NULL;
	struct in6_addr daddr;
	struct inet6_dev *idev;
	int n, i;
	struct ipv6_rt_hdr *hdr;
	struct rt0_hdr *rthdr;
	struct net *net = FUNC2(skb->dev);
	int accept_source_route = net->ipv6.devconf_all->accept_source_route;

	idev = FUNC6(skb->dev);
	if (idev) {
		if (accept_source_route > idev->cnf.accept_source_route)
			accept_source_route = idev->cnf.accept_source_route;
		FUNC7(idev);
	}

	if (!FUNC16(skb, FUNC24(skb) + 8) ||
	    !FUNC16(skb, (FUNC24(skb) +
				 ((FUNC23(skb)[1] + 1) << 3)))) {
		FUNC1(net, FUNC8(FUNC18(skb)),
				 IPSTATS_MIB_INHDRERRORS);
		FUNC14(skb);
		return -1;
	}

	hdr = (struct ipv6_rt_hdr *)FUNC23(skb);

	if (FUNC11(&FUNC13(skb)->daddr) ||
	    skb->pkt_type != PACKET_HOST) {
		FUNC1(net, FUNC8(FUNC18(skb)),
				 IPSTATS_MIB_INADDRERRORS);
		FUNC14(skb);
		return -1;
	}

looped_back:
	if (hdr->segments_left == 0) {
		switch (hdr->type) {
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
		case IPV6_SRCRT_TYPE_2:
			/* Silently discard type 2 header unless it was
			 * processed by own
			 */
			if (!addr) {
				IP6_INC_STATS_BH(net, ip6_dst_idev(skb_dst(skb)),
						 IPSTATS_MIB_INADDRERRORS);
				kfree_skb(skb);
				return -1;
			}
			break;
#endif
		default:
			break;
		}

		opt->lastopt = opt->srcrt = FUNC21(skb);
		skb->transport_header += (hdr->hdrlen + 1) << 3;
		opt->dst0 = opt->dst1;
		opt->dst1 = 0;
		opt->nhoff = (&hdr->nexthdr) - FUNC20(skb);
		return 1;
	}

	switch (hdr->type) {
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
	case IPV6_SRCRT_TYPE_2:
		if (accept_source_route < 0)
			goto unknown_rh;
		/* Silently discard invalid RTH type 2 */
		if (hdr->hdrlen != 2 || hdr->segments_left != 1) {
			IP6_INC_STATS_BH(net, ip6_dst_idev(skb_dst(skb)),
					 IPSTATS_MIB_INHDRERRORS);
			kfree_skb(skb);
			return -1;
		}
		break;
#endif
	default:
		goto unknown_rh;
	}

	/*
	 *	This is the routing header forwarding algorithm from
	 *	RFC 2460, page 16.
	 */

	n = hdr->hdrlen >> 1;

	if (hdr->segments_left > n) {
		FUNC1(net, FUNC8(FUNC18(skb)),
				 IPSTATS_MIB_INHDRERRORS);
		FUNC4(skb, ICMPV6_HDR_FIELD,
				  ((&hdr->segments_left) -
				   FUNC20(skb)));
		return -1;
	}

	/* We are about to mangle packet header. Be careful!
	   Do not damage packets queued somewhere.
	 */
	if (FUNC17(skb)) {
		/* the copy is a forwarded packet */
		if (FUNC15(skb, 0, 0, GFP_ATOMIC)) {
			FUNC1(net, FUNC8(FUNC18(skb)),
					 IPSTATS_MIB_OUTDISCARDS);
			FUNC14(skb);
			return -1;
		}
		hdr = (struct ipv6_rt_hdr *)FUNC23(skb);
	}

	if (skb->ip_summed == CHECKSUM_COMPLETE)
		skb->ip_summed = CHECKSUM_NONE;

	i = n - --hdr->segments_left;

	rthdr = (struct rt0_hdr *) hdr;
	addr = rthdr->addr;
	addr += i - 1;

	switch (hdr->type) {
#if defined(CONFIG_IPV6_MIP6) || defined(CONFIG_IPV6_MIP6_MODULE)
	case IPV6_SRCRT_TYPE_2:
		if (xfrm6_input_addr(skb, (xfrm_address_t *)addr,
				     (xfrm_address_t *)&ipv6_hdr(skb)->saddr,
				     IPPROTO_ROUTING) < 0) {
			IP6_INC_STATS_BH(net, ip6_dst_idev(skb_dst(skb)),
					 IPSTATS_MIB_INADDRERRORS);
			kfree_skb(skb);
			return -1;
		}
		if (!ipv6_chk_home_addr(dev_net(skb_dst(skb)->dev), addr)) {
			IP6_INC_STATS_BH(net, ip6_dst_idev(skb_dst(skb)),
					 IPSTATS_MIB_INADDRERRORS);
			kfree_skb(skb);
			return -1;
		}
		break;
#endif
	default:
		break;
	}

	if (FUNC11(addr)) {
		FUNC1(net, FUNC8(FUNC18(skb)),
				 IPSTATS_MIB_INADDRERRORS);
		FUNC14(skb);
		return -1;
	}

	FUNC10(&daddr, addr);
	FUNC10(addr, &FUNC13(skb)->daddr);
	FUNC10(&FUNC13(skb)->daddr, &daddr);

	FUNC19(skb);
	FUNC9(skb);
	if (FUNC18(skb)->error) {
		FUNC22(skb, skb->data - FUNC20(skb));
		FUNC3(skb);
		return -1;
	}

	if (FUNC18(skb)->dev->flags&IFF_LOOPBACK) {
		if (FUNC13(skb)->hop_limit <= 1) {
			FUNC1(net, FUNC8(FUNC18(skb)),
					 IPSTATS_MIB_INHDRERRORS);
			FUNC5(skb, ICMPV6_TIME_EXCEED, ICMPV6_EXC_HOPLIMIT,
				    0, skb->dev);
			FUNC14(skb);
			return -1;
		}
		FUNC13(skb)->hop_limit--;
		goto looped_back;
	}

	FUNC22(skb, skb->data - FUNC20(skb));
	FUNC3(skb);
	return -1;

unknown_rh:
	FUNC1(net, FUNC8(FUNC18(skb)), IPSTATS_MIB_INHDRERRORS);
	FUNC4(skb, ICMPV6_HDR_FIELD,
			  (&hdr->type) - FUNC20(skb));
	return -1;
}