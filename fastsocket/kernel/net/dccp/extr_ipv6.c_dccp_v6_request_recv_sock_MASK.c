#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_route_caps; int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_backlog_rcv; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int /*<<< orphan*/  tot_len; scalar_t__ opt_flen; scalar_t__ opt_nflen; int /*<<< orphan*/ * srcrt; } ;
struct TYPE_6__ {int /*<<< orphan*/  all; } ;
struct in6_addr {int dummy; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; int /*<<< orphan*/  mcast_hops; void* mcast_oif; int /*<<< orphan*/ * pktoptions; TYPE_1__ rxopt; struct in6_addr rcv_saddr; struct in6_addr saddr; struct in6_addr daddr; } ;
struct inet_sock {int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/ * opt; int /*<<< orphan*/ * pinet6; } ;
struct inet6_request_sock {int /*<<< orphan*/ * pktopts; int /*<<< orphan*/  iif; struct in6_addr loc_addr; struct in6_addr rmt_addr; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; struct in6_addr fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {TYPE_2__* dev; } ;
struct dccp_sock {int dummy; } ;
struct dccp6_sock {int /*<<< orphan*/  inet6; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/ * icsk_af_ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  loc_port; int /*<<< orphan*/  rmt_port; } ;
struct TYPE_8__ {int /*<<< orphan*/  hop_limit; } ;
struct TYPE_7__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENDROPS ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_TSO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sock* FUNC4 (struct sock*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  dccp_ipv6_mapped ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dccp_v4_do_rcv ; 
 struct sock* FUNC7 (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct sk_buff*) ; 
 struct inet6_request_sock* FUNC13 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC14 (struct sock*) ; 
 TYPE_5__* FUNC15 (struct sock*) ; 
 TYPE_4__* FUNC16 (struct request_sock*) ; 
 struct inet_sock* FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC19 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC20 (struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6_txoptions* FUNC21 (struct sock*,struct ipv6_txoptions*) ; 
 TYPE_3__* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct ipv6_pinfo*,struct ipv6_pinfo*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*,struct flowi*) ; 
 scalar_t__ FUNC27 (struct sock*) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock *FUNC34(struct sock *sk,
					      struct sk_buff *skb,
					      struct request_sock *req,
					      struct dst_entry *dst)
{
	struct inet6_request_sock *ireq6 = FUNC13(req);
	struct ipv6_pinfo *newnp, *np = FUNC14(sk);
	struct inet_sock *newinet;
	struct dccp_sock *newdp;
	struct dccp6_sock *newdp6;
	struct sock *newsk;
	struct ipv6_txoptions *opt;

	if (skb->protocol == FUNC11(ETH_P_IP)) {
		/*
		 *	v6 mapped
		 */
		newsk = FUNC7(sk, skb, req, dst);
		if (newsk == NULL)
			return NULL;

		newdp6 = (struct dccp6_sock *)newsk;
		newdp = FUNC5(newsk);
		newinet = FUNC17(newsk);
		newinet->pinet6 = &newdp6->inet6;
		newnp = FUNC14(newsk);

		FUNC24(newnp, np, sizeof(struct ipv6_pinfo));

		FUNC20(&newnp->daddr, 0, 0, FUNC10(0x0000FFFF),
			      newinet->daddr);

		FUNC20(&newnp->saddr, 0, 0, FUNC10(0x0000FFFF),
			      newinet->saddr);

		FUNC19(&newnp->rcv_saddr, &newnp->saddr);

		FUNC15(newsk)->icsk_af_ops = &dccp_ipv6_mapped;
		newsk->sk_backlog_rcv = dccp_v4_do_rcv;
		newnp->pktoptions  = NULL;
		newnp->opt	   = NULL;
		newnp->mcast_oif   = FUNC12(skb);
		newnp->mcast_hops  = FUNC22(skb)->hop_limit;

		/*
		 * No need to charge this sock to the relevant IPv6 refcnt debug socks count
		 * here, dccp_create_openreq_child now does this for us, see the comment in
		 * that function for the gory details. -acme
		 */

		/* It is tricky place. Until this moment IPv4 tcp
		   worked with IPv6 icsk.icsk_af_ops.
		   Sync it now.
		 */
		FUNC6(newsk, FUNC15(newsk)->icsk_pmtu_cookie);

		return newsk;
	}

	opt = np->opt;

	if (FUNC27(sk))
		goto out_overflow;

	if (dst == NULL) {
		struct in6_addr *final_p = NULL, final;
		struct flowi fl;

		FUNC25(&fl, 0, sizeof(fl));
		fl.proto = IPPROTO_DCCP;
		FUNC19(&fl.fl6_dst, &ireq6->rmt_addr);
		if (opt != NULL && opt->srcrt != NULL) {
			const struct rt0_hdr *rt0 = (struct rt0_hdr *)opt->srcrt;

			FUNC19(&final, &fl.fl6_dst);
			FUNC19(&fl.fl6_dst, rt0->addr);
			final_p = &final;
		}
		FUNC19(&fl.fl6_src, &ireq6->loc_addr);
		fl.oif = sk->sk_bound_dev_if;
		fl.fl_ip_dport = FUNC16(req)->rmt_port;
		fl.fl_ip_sport = FUNC16(req)->loc_port;
		FUNC26(sk, &fl);

		if (FUNC18(sk, &dst, &fl))
			goto out;

		if (final_p)
			FUNC19(&fl.fl6_dst, final_p);

		if ((FUNC33(FUNC31(sk), &dst, &fl, sk, 0)) < 0)
			goto out;
	}

	newsk = FUNC4(sk, req, skb);
	if (newsk == NULL)
		goto out_nonewsk;

	/*
	 * No need to charge this sock to the relevant IPv6 refcnt debug socks
	 * count here, dccp_create_openreq_child now does this for us, see the
	 * comment in that function for the gory details. -acme
	 */

	FUNC3(newsk, dst, NULL, NULL);
	newsk->sk_route_caps = dst->dev->features & ~(NETIF_F_IP_CSUM |
						      NETIF_F_TSO);
	newdp6 = (struct dccp6_sock *)newsk;
	newinet = FUNC17(newsk);
	newinet->pinet6 = &newdp6->inet6;
	newdp = FUNC5(newsk);
	newnp = FUNC14(newsk);

	FUNC24(newnp, np, sizeof(struct ipv6_pinfo));

	FUNC19(&newnp->daddr, &ireq6->rmt_addr);
	FUNC19(&newnp->saddr, &ireq6->loc_addr);
	FUNC19(&newnp->rcv_saddr, &ireq6->loc_addr);
	newsk->sk_bound_dev_if = ireq6->iif;

	/* Now IPv6 options...

	   First: no IPv4 options.
	 */
	newinet->opt = NULL;

	/* Clone RX bits */
	newnp->rxopt.all = np->rxopt.all;

	/* Clone pktoptions received with SYN */
	newnp->pktoptions = NULL;
	if (ireq6->pktopts != NULL) {
		newnp->pktoptions = FUNC28(ireq6->pktopts, GFP_ATOMIC);
		FUNC23(ireq6->pktopts);
		ireq6->pktopts = NULL;
		if (newnp->pktoptions)
			FUNC29(newnp->pktoptions, newsk);
	}
	newnp->opt	  = NULL;
	newnp->mcast_oif  = FUNC12(skb);
	newnp->mcast_hops = FUNC22(skb)->hop_limit;

	/*
	 * Clone native IPv6 options from listening socket (if any)
	 *
	 * Yes, keeping reference count would be much more clever, but we make
	 * one more one thing there: reattach optmem to newsk.
	 */
	if (opt != NULL) {
		newnp->opt = FUNC21(newsk, opt);
		if (opt != np->opt)
			FUNC30(sk, opt, opt->tot_len);
	}

	FUNC15(newsk)->icsk_ext_hdr_len = 0;
	if (newnp->opt != NULL)
		FUNC15(newsk)->icsk_ext_hdr_len = (newnp->opt->opt_nflen +
						     newnp->opt->opt_flen);

	FUNC6(newsk, FUNC8(dst));

	newinet->daddr = newinet->saddr = newinet->rcv_saddr = LOOPBACK4_IPV6;

	if (FUNC2(sk, newsk) < 0) {
		FUNC32(newsk);
		goto out;
	}
	FUNC1(newsk);

	return newsk;

out_overflow:
	FUNC0(FUNC31(sk), LINUX_MIB_LISTENOVERFLOWS);
out_nonewsk:
	FUNC9(dst);
out:
	FUNC0(FUNC31(sk), LINUX_MIB_LISTENDROPS);
	if (opt != NULL && opt != np->opt)
		FUNC30(sk, opt, opt->tot_len);
	return NULL;
}