#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sock {int sk_state; int sk_err_soft; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_bound_dev_if; } ;
struct sk_buff {int len; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct request_sock {int /*<<< orphan*/ * sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ipv6_pinfo {scalar_t__ recverr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; int /*<<< orphan*/  dst_cookie; } ;
struct inet_sock {int /*<<< orphan*/  sport; int /*<<< orphan*/  dport; } ;
struct inet6_skb_parm {int dummy; } ;
struct flowi {int /*<<< orphan*/  fl_ip_sport; int /*<<< orphan*/  fl_ip_dport; int /*<<< orphan*/  oif; int /*<<< orphan*/  fl6_src; int /*<<< orphan*/  fl6_dst; int /*<<< orphan*/  proto; } ;
struct dst_entry {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_awh; int /*<<< orphan*/  dccps_awl; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
typedef  int /*<<< orphan*/  fl ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  dreq_iss; } ;
struct TYPE_3__ {scalar_t__ icsk_pmtu_cookie; } ;

/* Variables and functions */
 int DCCPF_CLOSED ; 
 int DCCPF_LISTEN ; 
 int DCCPF_REQUESTING ; 
 int DCCP_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DCCP_LISTEN 130 
 int /*<<< orphan*/  DCCP_MIB_ATTEMPTFAILS ; 
#define  DCCP_REQUESTING 129 
#define  DCCP_RESPOND 128 
 int DCCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP6_MIB_INERRORS ; 
 scalar_t__ ICMPV6_PKT_TOOBIG ; 
 int /*<<< orphan*/  IPPROTO_DCCP ; 
 int /*<<< orphan*/  LINUX_MIB_LOCKDROPPEDICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_OUTOFWINDOWICMPS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dccp_hdr const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dst_entry* FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 int /*<<< orphan*/  FUNC11 (struct dccp_hdr const*) ; 
 TYPE_2__* FUNC12 (struct request_sock*) ; 
 struct dccp_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,scalar_t__) ; 
 struct net* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct dst_entry*) ; 
 scalar_t__ FUNC17 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC18 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,int*) ; 
 struct request_sock* FUNC20 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*) ; 
 struct sock* FUNC22 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ipv6_pinfo* FUNC23 (struct sock*) ; 
 TYPE_1__* FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*,struct request_sock*,struct request_sock**) ; 
 struct inet_sock* FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int FUNC29 (struct sock*,struct dst_entry**,struct flowi*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*,struct flowi*) ; 
 scalar_t__ FUNC33 (struct sock*) ; 
 int /*<<< orphan*/  FUNC34 (struct sock*) ; 
 int /*<<< orphan*/  FUNC35 (struct sock*) ; 
 int /*<<< orphan*/  FUNC36 (struct sock*) ; 
 int FUNC37 (struct net*,struct dst_entry**,struct flowi*,struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC38(struct sk_buff *skb, struct inet6_skb_parm *opt,
			u8 type, u8 code, int offset, __be32 info)
{
	struct ipv6hdr *hdr = (struct ipv6hdr *)skb->data;
	const struct dccp_hdr *dh = (struct dccp_hdr *)(skb->data + offset);
	struct dccp_sock *dp;
	struct ipv6_pinfo *np;
	struct sock *sk;
	int err;
	__u64 seq;
	struct net *net = FUNC15(skb->dev);

	if (skb->len < offset + sizeof(*dh) ||
	    skb->len < offset + FUNC4(dh)) {
		FUNC1(net, FUNC5(skb->dev),
				   ICMP6_MIB_INERRORS);
		return;
	}

	sk = FUNC22(net, &dccp_hashinfo,
			&hdr->daddr, dh->dccph_dport,
			&hdr->saddr, dh->dccph_sport, FUNC21(skb));

	if (sk == NULL) {
		FUNC1(net, FUNC5(skb->dev),
				   ICMP6_MIB_INERRORS);
		return;
	}

	if (sk->sk_state == DCCP_TIME_WAIT) {
		FUNC28(FUNC27(sk));
		return;
	}

	FUNC8(sk);
	if (FUNC33(sk))
		FUNC2(net, LINUX_MIB_LOCKDROPPEDICMPS);

	if (sk->sk_state == DCCP_CLOSED)
		goto out;

	dp = FUNC13(sk);
	seq = FUNC11(dh);
	if ((1 << sk->sk_state) & ~(DCCPF_REQUESTING | DCCPF_LISTEN) &&
	    !FUNC7(seq, dp->dccps_awl, dp->dccps_awh)) {
		FUNC2(net, LINUX_MIB_OUTOFWINDOWICMPS);
		goto out;
	}

	np = FUNC23(sk);

	if (type == ICMPV6_PKT_TOOBIG) {
		struct dst_entry *dst = NULL;

		if (FUNC33(sk))
			goto out;
		if ((1 << sk->sk_state) & (DCCPF_LISTEN | DCCPF_CLOSED))
			goto out;

		/* icmp should have updated the destination cache entry */
		dst = FUNC6(sk, np->dst_cookie);
		if (dst == NULL) {
			struct inet_sock *inet = FUNC26(sk);
			struct flowi fl;

			/* BUGGG_FUTURE: Again, it is not clear how
			   to handle rthdr case. Ignore this complexity
			   for now.
			 */
			FUNC31(&fl, 0, sizeof(fl));
			fl.proto = IPPROTO_DCCP;
			FUNC30(&fl.fl6_dst, &np->daddr);
			FUNC30(&fl.fl6_src, &np->saddr);
			fl.oif = sk->sk_bound_dev_if;
			fl.fl_ip_dport = inet->dport;
			fl.fl_ip_sport = inet->sport;
			FUNC32(sk, &fl);

			err = FUNC29(sk, &dst, &fl);
			if (err) {
				sk->sk_err_soft = -err;
				goto out;
			}

			err = FUNC37(net, &dst, &fl, sk, 0);
			if (err < 0) {
				sk->sk_err_soft = -err;
				goto out;
			}
		} else
			FUNC16(dst);

		if (FUNC24(sk)->icsk_pmtu_cookie > FUNC17(dst)) {
			FUNC14(sk, FUNC17(dst));
		} /* else let the usual retransmit timer handle it */
		FUNC18(dst);
		goto out;
	}

	FUNC19(type, code, &err);

	/* Might be for an request_sock */
	switch (sk->sk_state) {
		struct request_sock *req, **prev;
	case DCCP_LISTEN:
		if (FUNC33(sk))
			goto out;

		req = FUNC20(sk, &prev, dh->dccph_dport,
					   &hdr->daddr, &hdr->saddr,
					   FUNC21(skb));
		if (req == NULL)
			goto out;

		/*
		 * ICMPs are not backlogged, hence we cannot get an established
		 * socket here.
		 */
		FUNC3(req->sk != NULL);

		if (seq != FUNC12(req)->dreq_iss) {
			FUNC2(net, LINUX_MIB_OUTOFWINDOWICMPS);
			goto out;
		}

		FUNC25(sk, req, prev);
		goto out;

	case DCCP_REQUESTING:
	case DCCP_RESPOND:  /* Cannot happen.
			       It can, it SYNs are crossed. --ANK */
		if (!FUNC33(sk)) {
			FUNC0(DCCP_MIB_ATTEMPTFAILS);
			sk->sk_err = err;
			/*
			 * Wake people up to see the error
			 * (see connect in sock.c)
			 */
			sk->sk_error_report(sk);
			FUNC10(sk);
		} else
			sk->sk_err_soft = err;
		goto out;
	}

	if (!FUNC33(sk) && np->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else
		sk->sk_err_soft = err;

out:
	FUNC9(sk);
	FUNC34(sk);
}