#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  user_mss; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct tcp_options_received {int mss_clamp; scalar_t__ tstamp_ok; scalar_t__ saw_tstamp; int /*<<< orphan*/  user_mss; } ;
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  users; } ;
struct request_sock {scalar_t__ cookie_ts; int /*<<< orphan*/  mss; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_8__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_9__ {TYPE_2__ bits; } ;
struct ipv6_pinfo {TYPE_3__ rxopt; } ;
struct inet6_request_sock {struct sk_buff* pktopts; int /*<<< orphan*/  iif; int /*<<< orphan*/  rmt_addr; int /*<<< orphan*/  loc_addr; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_12__ {scalar_t__ when; } ;
struct TYPE_11__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  snt_synack; scalar_t__ snt_isn; int /*<<< orphan*/ * af_specific; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct request_sock*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  TCP_TIMEOUT_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct request_sock* FUNC7 (int /*<<< orphan*/ *) ; 
 struct inet6_request_sock* FUNC8 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sock*) ; 
 int FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 scalar_t__ FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 scalar_t__ sysctl_tcp_syncookies ; 
 int /*<<< orphan*/  tcp6_request_sock_ops ; 
 int /*<<< orphan*/  FUNC22 (struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct request_sock*,struct tcp_options_received*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,struct tcp_options_received*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_request_sock_ipv6_ops ; 
 TYPE_4__* FUNC26 (struct request_sock*) ; 
 struct tcp_sock* FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 
 int FUNC28 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC29 (struct sk_buff*) ; 
 scalar_t__ FUNC30 (struct sock*,struct request_sock*) ; 

__attribute__((used)) static int FUNC31(struct sock *sk, struct sk_buff *skb)
{
	struct inet6_request_sock *treq;
	struct ipv6_pinfo *np = FUNC9(sk);
	struct tcp_options_received tmp_opt;
	struct tcp_sock *tp = FUNC27(sk);
	struct request_sock *req = NULL;
	__u32 isn = FUNC1(skb)->when;
#ifdef CONFIG_SYN_COOKIES
	int want_cookie = 0;
#else
#define want_cookie 0
#endif

	if (skb->protocol == FUNC4(ETH_P_IP))
		return FUNC28(sk, skb);

	if (!FUNC16(skb))
		goto drop;

	if (FUNC10(sk) && !isn) {
		if (FUNC17())
			FUNC21(skb);
#ifdef CONFIG_SYN_COOKIES
		if (sysctl_tcp_syncookies)
			want_cookie = 1;
		else
#endif
		goto drop;
	}

	if (FUNC20(sk) && FUNC11(sk) > 1)
		goto drop;

	req = FUNC7(&tcp6_request_sock_ops);
	if (req == NULL)
		goto drop;

#ifdef CONFIG_TCP_MD5SIG
	tcp_rsk(req)->af_specific = &tcp_request_sock_ipv6_ops;
#endif

	FUNC22(&tmp_opt);
	tmp_opt.mss_clamp = IPV6_MIN_MTU - sizeof(struct tcphdr) - sizeof(struct ipv6hdr);
	tmp_opt.user_mss = tp->rx_opt.user_mss;

	FUNC25(skb, &tmp_opt, 0);

	if (want_cookie && !tmp_opt.saw_tstamp)
		FUNC22(&tmp_opt);

	tmp_opt.tstamp_ok = tmp_opt.saw_tstamp;
	FUNC24(req, &tmp_opt, skb);

	treq = FUNC8(req);
	FUNC12(&treq->rmt_addr, &FUNC14(skb)->saddr);
	FUNC12(&treq->loc_addr, &FUNC14(skb)->daddr);
	if (!want_cookie)
		FUNC0(req, FUNC23(skb));

	treq->iif = sk->sk_bound_dev_if;

	/* So that link locals have meaning */
	if (!sk->sk_bound_dev_if &&
	    FUNC13(&treq->rmt_addr) & IPV6_ADDR_LINKLOCAL)
		treq->iif = FUNC6(skb);

	if (want_cookie) {
		isn = FUNC3(sk, skb, &req->mss);
		req->cookie_ts = tmp_opt.tstamp_ok;
	} else if (!isn) {
		if (FUNC15(sk, skb) ||
		    np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
		    np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
			FUNC2(&skb->users);
			treq->pktopts = skb;
		}

		isn = FUNC29(skb);
	}

	FUNC26(req)->snt_isn = isn;
	FUNC26(req)->snt_synack = tcp_time_stamp;

	FUNC19(sk, skb, req);

	if (FUNC30(sk, req))
		goto drop;

	if (!want_cookie) {
		FUNC5(sk, req, TCP_TIMEOUT_INIT);
		return 0;
	}

drop:
	if (req)
		FUNC18(req);

	return 0; /* don't send reset */
}