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
typedef  int /*<<< orphan*/  tcp_opt ;
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  ack; int /*<<< orphan*/  ack_seq; } ;
struct tcp_sock {scalar_t__ window_clamp; } ;
struct tcp_request_sock {void* snt_isn; void* rcv_isn; int /*<<< orphan*/  snt_synack; } ;
struct in6_addr {int dummy; } ;
struct tcp_options_received {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; scalar_t__ oif; struct in6_addr fl6_src; int /*<<< orphan*/  proto; int /*<<< orphan*/  rcv_tsecr; scalar_t__ saw_tstamp; int /*<<< orphan*/  rcv_tsval; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  rcv_wscale; int /*<<< orphan*/  snd_wscale; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int mss; unsigned long expires; int /*<<< orphan*/  window_clamp; int /*<<< orphan*/  rcv_wnd; int /*<<< orphan*/  ts_recent; scalar_t__ retrans; } ;
struct TYPE_6__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_7__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {TYPE_3__* opt; TYPE_2__ rxopt; } ;
struct inet_request_sock {int /*<<< orphan*/  rcv_wscale; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  rmt_port; scalar_t__ tstamp_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  snd_wscale; scalar_t__ ecn_ok; int /*<<< orphan*/  loc_port; } ;
struct inet6_request_sock {struct in6_addr loc_addr; struct in6_addr rmt_addr; scalar_t__ iif; struct sk_buff* pktopts; } ;
struct flowi {struct in6_addr fl6_dst; int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; scalar_t__ oif; struct in6_addr fl6_src; int /*<<< orphan*/  proto; int /*<<< orphan*/  rcv_tsecr; scalar_t__ saw_tstamp; int /*<<< orphan*/  rcv_tsval; int /*<<< orphan*/  wscale_ok; int /*<<< orphan*/  sack_ok; int /*<<< orphan*/  rcv_wscale; int /*<<< orphan*/  snd_wscale; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __u32 ;
struct TYPE_10__ {int /*<<< orphan*/  sport; } ;
struct TYPE_9__ {struct in6_addr daddr; struct in6_addr saddr; } ;
struct TYPE_8__ {scalar_t__ srcrt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESFAILED ; 
 int /*<<< orphan*/  LINUX_MIB_SYNCOOKIESRECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTAX_INITRWND ; 
 int /*<<< orphan*/  RTAX_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 struct sock* FUNC5 (struct sock*,struct sk_buff*,struct request_sock*,struct dst_entry*) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 struct request_sock* FUNC7 (int /*<<< orphan*/ *) ; 
 struct inet6_request_sock* FUNC8 (struct request_sock*) ; 
 struct ipv6_pinfo* FUNC9 (struct sock*) ; 
 struct inet_request_sock* FUNC10 (struct request_sock*) ; 
 TYPE_5__* FUNC11 (struct sock*) ; 
 scalar_t__ FUNC12 (struct sock*,struct dst_entry**,struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC13 (struct in6_addr*,struct in6_addr*) ; 
 int FUNC14 (struct in6_addr*) ; 
 TYPE_4__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct tcp_options_received*,int /*<<< orphan*/ ,int) ; 
 void* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct request_sock*) ; 
 scalar_t__ FUNC20 (struct sock*,struct sk_buff*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct request_sock*,struct tcp_options_received*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  sysctl_tcp_syncookies ; 
 int /*<<< orphan*/  tcp6_request_sock_ops ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 struct tcphdr* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,struct tcp_options_received*,int /*<<< orphan*/ ) ; 
 struct tcp_request_sock* FUNC26 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC28 (struct sock*) ; 
 scalar_t__ FUNC29 (struct sock*) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,struct dst_entry**,struct tcp_options_received*,struct sock*,int /*<<< orphan*/ ) ; 

struct sock *FUNC31(struct sock *sk, struct sk_buff *skb)
{
	struct inet_request_sock *ireq;
	struct inet6_request_sock *ireq6;
	struct tcp_request_sock *treq;
	struct ipv6_pinfo *np = FUNC9(sk);
	struct tcp_sock *tp = FUNC28(sk);
	const struct tcphdr *th = FUNC24(skb);
	__u32 cookie = FUNC18(th->ack_seq) - 1;
	struct sock *ret = sk;
	struct request_sock *req;
	int mss;
	struct dst_entry *dst;
	__u8 rcv_wscale;
	struct tcp_options_received tcp_opt;

	if (!sysctl_tcp_syncookies || !th->ack)
		goto out;

	if (FUNC29(sk) ||
		(mss = FUNC2(skb, cookie)) == 0) {
		FUNC0(FUNC22(sk), LINUX_MIB_SYNCOOKIESFAILED);
		goto out;
	}

	FUNC0(FUNC22(sk), LINUX_MIB_SYNCOOKIESRECV);

	/* check for timestamp cookie support */
	FUNC17(&tcp_opt, 0, sizeof(tcp_opt));
	FUNC25(skb, &tcp_opt, 0);

	if (tcp_opt.saw_tstamp)
		FUNC3(&tcp_opt);

	ret = NULL;
	req = FUNC7(&tcp6_request_sock_ops);
	if (!req)
		goto out;

	ireq = FUNC10(req);
	ireq6 = FUNC8(req);
	treq = FUNC26(req);

	if (FUNC20(sk, skb, req))
		goto out_free;

	req->mss = mss;
	ireq->rmt_port = th->source;
	ireq->loc_port = th->dest;
	FUNC13(&ireq6->rmt_addr, &FUNC15(skb)->saddr);
	FUNC13(&ireq6->loc_addr, &FUNC15(skb)->daddr);
	if (FUNC16(sk, skb) ||
	    np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
	    np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
		FUNC1(&skb->users);
		ireq6->pktopts = skb;
	}

	ireq6->iif = sk->sk_bound_dev_if;
	/* So that link locals have meaning */
	if (!sk->sk_bound_dev_if &&
	    FUNC14(&ireq6->rmt_addr) & IPV6_ADDR_LINKLOCAL)
		ireq6->iif = FUNC6(skb);

	req->expires = 0UL;
	req->retrans = 0;
	ireq->ecn_ok		= 0;
	ireq->snd_wscale	= tcp_opt.snd_wscale;
	ireq->rcv_wscale	= tcp_opt.rcv_wscale;
	ireq->sack_ok		= tcp_opt.sack_ok;
	ireq->wscale_ok		= tcp_opt.wscale_ok;
	ireq->tstamp_ok		= tcp_opt.saw_tstamp;
	req->ts_recent		= tcp_opt.saw_tstamp ? tcp_opt.rcv_tsval : 0;
	treq->snt_synack	= tcp_opt.saw_tstamp ? tcp_opt.rcv_tsecr : 0;
	treq->rcv_isn = FUNC18(th->seq) - 1;
	treq->snt_isn = cookie;

	/*
	 * We need to lookup the dst_entry to get the correct window size.
	 * This is taken from tcp_v6_syn_recv_sock.  Somebody please enlighten
	 * me if there is a preferred way.
	 */
	{
		struct in6_addr *final_p = NULL, final;
		struct flowi fl;
		FUNC17(&fl, 0, sizeof(fl));
		fl.proto = IPPROTO_TCP;
		FUNC13(&fl.fl6_dst, &ireq6->rmt_addr);
		if (np->opt && np->opt->srcrt) {
			struct rt0_hdr *rt0 = (struct rt0_hdr *) np->opt->srcrt;
			FUNC13(&final, &fl.fl6_dst);
			FUNC13(&fl.fl6_dst, rt0->addr);
			final_p = &final;
		}
		FUNC13(&fl.fl6_src, &ireq6->loc_addr);
		fl.oif = sk->sk_bound_dev_if;
		fl.fl_ip_dport = FUNC10(req)->rmt_port;
		fl.fl_ip_sport = FUNC11(sk)->sport;
		FUNC21(req, &fl);
		if (FUNC12(sk, &dst, &fl))
			goto out_free;

		if (final_p)
			FUNC13(&fl.fl6_dst, final_p);
		if ((FUNC30(FUNC22(sk), &dst, &fl, sk, 0)) < 0)
			goto out_free;
	}

	req->window_clamp = tp->window_clamp ? :FUNC4(dst, RTAX_WINDOW);
	FUNC27(FUNC23(sk), req->mss,
				  &req->rcv_wnd, &req->window_clamp,
				  ireq->wscale_ok, &rcv_wscale,
				  FUNC4(dst, RTAX_INITRWND));

	ireq->rcv_wscale = rcv_wscale;

	ret = FUNC5(sk, skb, req, dst);
out:
	return ret;
out_free:
	FUNC19(req);
	return NULL;
}