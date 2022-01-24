#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct tcphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  seq; int /*<<< orphan*/  source; } ;
struct tcp_sock {int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  snd_una; } ;
struct sock {int sk_state; int sk_err_soft; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct request_sock {int /*<<< orphan*/ * sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ipv6_pinfo {scalar_t__ recverr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  dst_cookie; } ;
struct inet_sock {int /*<<< orphan*/  sport; int /*<<< orphan*/  dport; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_9__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_8__ {scalar_t__ icsk_pmtu_cookie; } ;
struct TYPE_7__ {scalar_t__ hop_limit; } ;
struct TYPE_6__ {int /*<<< orphan*/  snt_isn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
 scalar_t__ ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  LINUX_MIB_LOCKDROPPEDICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_OUTOFWINDOWICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_TCPMINTTLDROP ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 int TCP_CLOSE ; 
#define  TCP_LISTEN 130 
#define  TCP_SYN_RECV 129 
#define  TCP_SYN_SENT 128 
 int TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 struct dst_entry* FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct net* FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (struct dst_entry*) ; 
 scalar_t__ FUNC10 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,int*) ; 
 struct request_sock* FUNC13 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 struct sock* FUNC15 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC16 (struct sock*) ; 
 TYPE_3__* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct request_sock*,struct request_sock**) ; 
 struct inet_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,struct flowi*) ; 
 scalar_t__ FUNC28 (struct sock*) ; 
 scalar_t__ FUNC29 (struct sock*) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*) ; 
 int /*<<< orphan*/  FUNC33 (struct sock*) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 TYPE_1__* FUNC34 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC35 (struct sock*) ; 
 struct tcp_sock* FUNC36 (struct sock*) ; 
 int /*<<< orphan*/  FUNC37 (struct sock*,scalar_t__) ; 
 int FUNC38 (struct net*,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC39(struct sk_buff *skb, struct inet6_skb_parm *opt,
		u8 type, u8 code, int offset, __be32 info)
{
	struct ipv6hdr *hdr = (struct ipv6hdr*)skb->data;
	const struct tcphdr *th = (struct tcphdr *)(skb->data+offset);
	struct ipv6_pinfo *np;
	struct sock *sk;
	int err;
	struct tcp_sock *tp;
	__u32 seq;
	struct net *net = FUNC8(skb->dev);

	sk = FUNC15(net, &tcp_hashinfo, &hdr->daddr,
			th->dest, &hdr->saddr, th->source, skb->dev->ifindex);

	if (sk == NULL) {
		FUNC0(net, FUNC3(skb->dev),
				   ICMP6_MIB_INERRORS);
		return;
	}

	if (sk->sk_state == TCP_TIME_WAIT) {
		FUNC21(FUNC20(sk));
		return;
	}

	FUNC6(sk);
	if (FUNC29(sk))
		FUNC1(net, LINUX_MIB_LOCKDROPPEDICMPS);

	if (sk->sk_state == TCP_CLOSE)
		goto out;

	if (FUNC24(skb)->hop_limit < FUNC28(sk)) {
		FUNC1(net, LINUX_MIB_TCPMINTTLDROP);
		goto out;
	}

	tp = FUNC36(sk);
	seq = FUNC26(th->seq);
	if (sk->sk_state != TCP_LISTEN &&
	    !FUNC5(seq, tp->snd_una, tp->snd_nxt)) {
		FUNC1(net, LINUX_MIB_OUTOFWINDOWICMPS);
		goto out;
	}

	np = FUNC16(sk);

	if (type == ICMPV6_PKT_TOOBIG) {
		struct dst_entry *dst = NULL;

		if (FUNC29(sk))
			goto out;
		if ((1 << sk->sk_state) & (TCPF_LISTEN | TCPF_CLOSE))
			goto out;

		/* icmp should have updated the destination cache entry */
		dst = FUNC4(sk, np->dst_cookie);

		if (dst == NULL) {
			struct inet_sock *inet = FUNC19(sk);
			struct flowi fl;

			/* BUGGG_FUTURE: Again, it is not clear how
			   to handle rthdr case. Ignore this complexity
			   for now.
			 */
			FUNC25(&fl, 0, sizeof(fl));
			fl.proto = IPPROTO_TCP;
			FUNC23(&fl.fl6_dst, &np->daddr);
			FUNC23(&fl.fl6_src, &np->saddr);
			fl.oif = sk->sk_bound_dev_if;
			fl.fl_ip_dport = inet->dport;
			fl.fl_ip_sport = inet->sport;
			FUNC27(skb, &fl);

			if ((err = FUNC22(sk, &dst, &fl))) {
				sk->sk_err_soft = -err;
				goto out;
			}

			if ((err = FUNC38(net, &dst, &fl, sk, 0)) < 0) {
				sk->sk_err_soft = -err;
				goto out;
			}

		} else
			FUNC9(dst);

		if (FUNC17(sk)->icsk_pmtu_cookie > FUNC10(dst)) {
			FUNC37(sk, FUNC10(dst));
			FUNC35(sk);
		} /* else let the usual retransmit timer handle it */
		FUNC11(dst);
		goto out;
	}

	FUNC12(type, code, &err);

	/* Might be for an request_sock */
	switch (sk->sk_state) {
		struct request_sock *req, **prev;
	case TCP_LISTEN:
		if (FUNC29(sk))
			goto out;

		req = FUNC13(sk, &prev, th->dest, &hdr->daddr,
					   &hdr->saddr, FUNC14(skb));
		if (!req)
			goto out;

		/* ICMPs are not backlogged, hence we cannot get
		 * an established socket here.
		 */
		FUNC2(req->sk != NULL);

		if (seq != FUNC34(req)->snt_isn) {
			FUNC1(net, LINUX_MIB_OUTOFWINDOWICMPS);
			goto out;
		}

		FUNC18(sk, req, prev);
		goto out;

	case TCP_SYN_SENT:
	case TCP_SYN_RECV:  /* Cannot happen.
			       It can, it SYNs are crossed. --ANK */
		if (!FUNC29(sk)) {
			sk->sk_err = err;
			sk->sk_error_report(sk);		/* Wake people up to see the error (see connect in sock.c) */

			FUNC33(sk);
		} else
			sk->sk_err_soft = err;
		goto out;
	}

	if (!FUNC29(sk) && np->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else
		sk->sk_err_soft = err;

out:
	FUNC7(sk);
	FUNC30(sk);
}