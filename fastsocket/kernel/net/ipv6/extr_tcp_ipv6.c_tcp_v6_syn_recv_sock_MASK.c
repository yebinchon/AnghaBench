#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {int /*<<< orphan*/  total_retrans; int /*<<< orphan*/  advmss; int /*<<< orphan*/ * af_specific; } ;
struct tcp_md5sig_key {int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
struct tcp6_sock {int /*<<< orphan*/  inet6; } ;
struct sock {int /*<<< orphan*/  sk_bound_dev_if; int /*<<< orphan*/  sk_gso_type; int /*<<< orphan*/  sk_backlog_rcv; } ;
struct sk_buff {scalar_t__ protocol; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int /*<<< orphan*/  retrans; } ;
struct ipv6_txoptions {int /*<<< orphan*/  tot_len; scalar_t__ opt_flen; scalar_t__ opt_nflen; scalar_t__ srcrt; } ;
struct in6_addr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  all; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; struct in6_addr daddr; int /*<<< orphan*/  mcast_hops; void* mcast_oif; int /*<<< orphan*/ * pktoptions; TYPE_1__ rxopt; int /*<<< orphan*/ * ipv6_fl_list; struct in6_addr rcv_saddr; struct in6_addr saddr; } ;
struct inet_sock {int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/ * opt; int /*<<< orphan*/ * pinet6; } ;
struct inet6_request_sock {int /*<<< orphan*/ * pktopts; int /*<<< orphan*/  iif; struct in6_addr loc_addr; struct in6_addr rmt_addr; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; struct in6_addr fl6_src; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
struct TYPE_13__ {scalar_t__ icsk_ext_hdr_len; int /*<<< orphan*/  icsk_pmtu_cookie; int /*<<< orphan*/ * icsk_af_ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  loc_port; int /*<<< orphan*/  rmt_port; } ;
struct TYPE_11__ {int /*<<< orphan*/  hop_limit; } ;
struct TYPE_10__ {void* rcv_tos; } ;
struct TYPE_9__ {scalar_t__ snt_synack; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENDROPS ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTAX_ADVMSS ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct dst_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct sk_buff*) ; 
 struct inet6_request_sock* FUNC10 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC11 (struct sock*) ; 
 TYPE_7__* FUNC12 (struct sock*) ; 
 TYPE_6__* FUNC13 (struct request_sock*) ; 
 struct inet_sock* FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC16 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC17 (struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6_txoptions* FUNC18 (struct sock*,struct ipv6_txoptions*) ; 
 TYPE_4__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  ipv6_mapped ; 
 void* FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 char* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct ipv6_pinfo*,struct ipv6_pinfo*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (struct request_sock*,struct flowi*) ; 
 scalar_t__ FUNC26 (struct sock*) ; 
 TYPE_3__* FUNC27 (struct sock*) ; 
 int /*<<< orphan*/ * FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*,struct ipv6_txoptions*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 struct sock* FUNC33 (struct sock*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (struct sock*) ; 
 int /*<<< orphan*/  FUNC35 (struct sock*) ; 
 TYPE_2__* FUNC36 (struct request_sock*) ; 
 struct tcp_sock* FUNC37 (struct sock*) ; 
 int /*<<< orphan*/  tcp_sock_ipv6_mapped_specific ; 
 int /*<<< orphan*/  FUNC38 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ tcp_time_stamp ; 
 int /*<<< orphan*/  tcp_v4_do_rcv ; 
 struct sock* FUNC39 (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC40 (struct sock*,struct in6_addr*,char*,int /*<<< orphan*/ ) ; 
 struct tcp_md5sig_key* FUNC41 (struct sock*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC42 (struct sock*,scalar_t__) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sock * FUNC44(struct sock *sk, struct sk_buff *skb,
					  struct request_sock *req,
					  struct dst_entry *dst)
{
	struct inet6_request_sock *treq;
	struct ipv6_pinfo *newnp, *np = FUNC11(sk);
	struct tcp6_sock *newtcp6sk;
	struct inet_sock *newinet;
	struct tcp_sock *newtp;
	struct sock *newsk;
	struct ipv6_txoptions *opt;
#ifdef CONFIG_TCP_MD5SIG
	struct tcp_md5sig_key *key;
#endif

	if (skb->protocol == FUNC8(ETH_P_IP)) {
		/*
		 *	v6 mapped
		 */

		newsk = FUNC39(sk, skb, req, dst);

		if (newsk == NULL)
			return NULL;

		newtcp6sk = (struct tcp6_sock *)newsk;
		FUNC14(newsk)->pinet6 = &newtcp6sk->inet6;

		newinet = FUNC14(newsk);
		newnp = FUNC11(newsk);
		newtp = FUNC37(newsk);

		FUNC23(newnp, np, sizeof(struct ipv6_pinfo));

		FUNC17(&newnp->daddr, 0, 0, FUNC7(0x0000FFFF),
			      newinet->daddr);

		FUNC17(&newnp->saddr, 0, 0, FUNC7(0x0000FFFF),
			      newinet->saddr);

		FUNC16(&newnp->rcv_saddr, &newnp->saddr);

		FUNC12(newsk)->icsk_af_ops = &ipv6_mapped;
		newsk->sk_backlog_rcv = tcp_v4_do_rcv;
#ifdef CONFIG_TCP_MD5SIG
		newtp->af_specific = &tcp_sock_ipv6_mapped_specific;
#endif

		newnp->pktoptions  = NULL;
		newnp->opt	   = NULL;
		newnp->mcast_oif   = FUNC9(skb);
		newnp->mcast_hops  = FUNC19(skb)->hop_limit;
		FUNC27(newsk)->rcv_tos = FUNC20(FUNC19(skb));

		/*
		 * No need to charge this sock to the relevant IPv6 refcnt debug socks count
		 * here, tcp_create_openreq_child now does this for us, see the comment in
		 * that function for the gory details. -acme
		 */

		/* It is tricky place. Until this moment IPv4 tcp
		   worked with IPv6 icsk.icsk_af_ops.
		   Sync it now.
		 */
		FUNC38(newsk, FUNC12(newsk)->icsk_pmtu_cookie);

		return newsk;
	}

	treq = FUNC10(req);
	opt = np->opt;

	if (FUNC26(sk))
		goto out_overflow;

	if (dst == NULL) {
		struct in6_addr *final_p = NULL, final;
		struct flowi fl;

		FUNC24(&fl, 0, sizeof(fl));
		fl.proto = IPPROTO_TCP;
		FUNC16(&fl.fl6_dst, &treq->rmt_addr);
		if (opt && opt->srcrt) {
			struct rt0_hdr *rt0 = (struct rt0_hdr *) opt->srcrt;
			FUNC16(&final, &fl.fl6_dst);
			FUNC16(&fl.fl6_dst, rt0->addr);
			final_p = &final;
		}
		FUNC16(&fl.fl6_src, &treq->loc_addr);
		fl.oif = sk->sk_bound_dev_if;
		fl.fl_ip_dport = FUNC13(req)->rmt_port;
		fl.fl_ip_sport = FUNC13(req)->loc_port;
		FUNC25(req, &fl);

		if (FUNC15(sk, &dst, &fl))
			goto out;

		if (final_p)
			FUNC16(&fl.fl6_dst, final_p);

		if ((FUNC43(FUNC31(sk), &dst, &fl, sk, 0)) < 0)
			goto out;
	}

	newsk = FUNC33(sk, req, skb);
	if (newsk == NULL)
		goto out_nonewsk;

	/*
	 * No need to charge this sock to the relevant IPv6 refcnt debug socks
	 * count here, tcp_create_openreq_child now does this for us, see the
	 * comment in that function for the gory details. -acme
	 */

	newsk->sk_gso_type = SKB_GSO_TCPV6;
	FUNC3(newsk, dst, NULL, NULL);

	newtcp6sk = (struct tcp6_sock *)newsk;
	FUNC14(newsk)->pinet6 = &newtcp6sk->inet6;

	newtp = FUNC37(newsk);
	newinet = FUNC14(newsk);
	newnp = FUNC11(newsk);

	FUNC23(newnp, np, sizeof(struct ipv6_pinfo));

	FUNC16(&newnp->daddr, &treq->rmt_addr);
	FUNC16(&newnp->saddr, &treq->loc_addr);
	FUNC16(&newnp->rcv_saddr, &treq->loc_addr);
	newsk->sk_bound_dev_if = treq->iif;

	/* Now IPv6 options...

	   First: no IPv4 options.
	 */
	newinet->opt = NULL;
	newnp->ipv6_fl_list = NULL;

	/* Clone RX bits */
	newnp->rxopt.all = np->rxopt.all;

	/* Clone pktoptions received with SYN */
	newnp->pktoptions = NULL;
	if (treq->pktopts != NULL) {
		newnp->pktoptions = FUNC28(treq->pktopts, GFP_ATOMIC);
		FUNC21(treq->pktopts);
		treq->pktopts = NULL;
		if (newnp->pktoptions)
			FUNC29(newnp->pktoptions, newsk);
	}
	newnp->opt	  = NULL;
	newnp->mcast_oif  = FUNC9(skb);
	newnp->mcast_hops = FUNC19(skb)->hop_limit;
	FUNC27(newsk)->rcv_tos = FUNC20(FUNC19(skb));

	/* Clone native IPv6 options from listening socket (if any)

	   Yes, keeping reference count would be much more clever,
	   but we make one more one thing there: reattach optmem
	   to newsk.
	 */
	if (opt) {
		newnp->opt = FUNC18(newsk, opt);
		if (opt != np->opt)
			FUNC30(sk, opt, opt->tot_len);
	}

	FUNC12(newsk)->icsk_ext_hdr_len = 0;
	if (newnp->opt)
		FUNC12(newsk)->icsk_ext_hdr_len = (newnp->opt->opt_nflen +
						     newnp->opt->opt_flen);

	FUNC35(newsk);
	FUNC38(newsk, FUNC5(dst));
	newtp->advmss = FUNC4(dst, RTAX_ADVMSS);
	FUNC34(newsk);
	if (FUNC36(req)->snt_synack)
		FUNC42(newsk,
		    tcp_time_stamp - FUNC36(req)->snt_synack);
	newtp->total_retrans = req->retrans;

	newinet->daddr = newinet->saddr = newinet->rcv_saddr = LOOPBACK4_IPV6;

#ifdef CONFIG_TCP_MD5SIG
	/* Copy over the MD5 key from the original socket */
	if ((key = tcp_v6_md5_do_lookup(sk, &newnp->daddr)) != NULL) {
		/* We're using one, so create a matching key
		 * on the newsk structure. If we fail to get
		 * memory, then we end up not copying the key
		 * across. Shucks.
		 */
		char *newkey = kmemdup(key->key, key->keylen, GFP_ATOMIC);
		if (newkey != NULL)
			tcp_v6_md5_do_add(newsk, &newnp->daddr,
					  newkey, key->keylen);
	}
#endif

	if (FUNC2(sk, newsk) < 0) {
		FUNC32(newsk);
		goto out;
	}
	FUNC1(newsk);

	return newsk;

out_overflow:
	FUNC0(FUNC31(sk), LINUX_MIB_LISTENOVERFLOWS);
out_nonewsk:
	if (opt && opt != np->opt)
		FUNC30(sk, opt, opt->tot_len);
	FUNC6(dst);
out:
	FUNC0(FUNC31(sk), LINUX_MIB_LISTENDROPS);
	return NULL;
}