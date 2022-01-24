#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {scalar_t__ const data; scalar_t__ const len; int /*<<< orphan*/  dev; } ;
struct request_sock {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet_sock {scalar_t__ recverr; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_awh; int /*<<< orphan*/  dccps_awl; } ;
struct dccp_hdr {int /*<<< orphan*/  dccph_dport; int /*<<< orphan*/  dccph_sport; } ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_6__ {int /*<<< orphan*/  dreq_iss; } ;
struct TYPE_5__ {int errno; } ;
struct TYPE_4__ {int type; int code; } ;

/* Variables and functions */
 int DCCPF_LISTEN ; 
 int DCCPF_REQUESTING ; 
 int DCCP_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DCCP_LISTEN 134 
 int /*<<< orphan*/  DCCP_MIB_ATTEMPTFAILS ; 
#define  DCCP_REQUESTING 133 
#define  DCCP_RESPOND 132 
 int DCCP_TIME_WAIT ; 
 int EHOSTUNREACH ; 
 int EPROTO ; 
#define  ICMP_DEST_UNREACH 131 
 int const ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
#define  ICMP_PARAMETERPROB 130 
#define  ICMP_SOURCE_QUENCH 129 
#define  ICMP_TIME_EXCEEDED 128 
 int /*<<< orphan*/  LINUX_MIB_LOCKDROPPEDICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_OUTOFWINDOWICMPS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int const NR_ICMP_UNREACH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ const FUNC4 (struct dccp_hdr const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct iphdr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  dccp_hashinfo ; 
 int /*<<< orphan*/  FUNC10 (struct dccp_hdr const*) ; 
 TYPE_3__* FUNC11 (struct request_sock*) ; 
 struct dccp_sock* FUNC12 (struct sock*) ; 
 struct net* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* icmp_err_convert ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct request_sock*,struct request_sock**) ; 
 struct request_sock* FUNC16 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct sock* FUNC18 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 

__attribute__((used)) static void FUNC26(struct sk_buff *skb, u32 info)
{
	const struct iphdr *iph = (struct iphdr *)skb->data;
	const u8 offset = iph->ihl << 2;
	const struct dccp_hdr *dh = (struct dccp_hdr *)(skb->data + offset);
	struct dccp_sock *dp;
	struct inet_sock *inet;
	const int type = FUNC14(skb)->type;
	const int code = FUNC14(skb)->code;
	struct sock *sk;
	__u64 seq;
	int err;
	struct net *net = FUNC13(skb->dev);

	if (skb->len < offset + sizeof(*dh) ||
	    skb->len < offset + FUNC4(dh)) {
		FUNC1(net, ICMP_MIB_INERRORS);
		return;
	}

	sk = FUNC18(net, &dccp_hashinfo,
			iph->daddr, dh->dccph_dport,
			iph->saddr, dh->dccph_sport, FUNC17(skb));
	if (sk == NULL) {
		FUNC1(net, ICMP_MIB_INERRORS);
		return;
	}

	if (sk->sk_state == DCCP_TIME_WAIT) {
		FUNC21(FUNC20(sk));
		return;
	}

	FUNC6(sk);
	/* If too many ICMPs get dropped on busy
	 * servers this needs to be solved differently.
	 */
	if (FUNC22(sk))
		FUNC2(net, LINUX_MIB_LOCKDROPPEDICMPS);

	if (sk->sk_state == DCCP_CLOSED)
		goto out;

	dp = FUNC12(sk);
	seq = FUNC10(dh);
	if ((1 << sk->sk_state) & ~(DCCPF_REQUESTING | DCCPF_LISTEN) &&
	    !FUNC5(seq, dp->dccps_awl, dp->dccps_awh)) {
		FUNC2(net, LINUX_MIB_OUTOFWINDOWICMPS);
		goto out;
	}

	switch (type) {
	case ICMP_SOURCE_QUENCH:
		/* Just silently ignore these. */
		goto out;
	case ICMP_PARAMETERPROB:
		err = EPROTO;
		break;
	case ICMP_DEST_UNREACH:
		if (code > NR_ICMP_UNREACH)
			goto out;

		if (code == ICMP_FRAG_NEEDED) { /* PMTU discovery (RFC1191) */
			if (!FUNC22(sk))
				FUNC8(sk, iph, info);
			goto out;
		}

		err = icmp_err_convert[code].errno;
		break;
	case ICMP_TIME_EXCEEDED:
		err = EHOSTUNREACH;
		break;
	default:
		goto out;
	}

	switch (sk->sk_state) {
		struct request_sock *req , **prev;
	case DCCP_LISTEN:
		if (FUNC22(sk))
			goto out;
		req = FUNC16(sk, &prev, dh->dccph_dport,
					  iph->daddr, iph->saddr);
		if (!req)
			goto out;

		/*
		 * ICMPs are not backlogged, hence we cannot get an established
		 * socket here.
		 */
		FUNC3(req->sk);

		if (seq != FUNC11(req)->dreq_iss) {
			FUNC2(net, LINUX_MIB_OUTOFWINDOWICMPS);
			goto out;
		}
		/*
		 * Still in RESPOND, just remove it silently.
		 * There is no good way to pass the error to the newly
		 * created socket, and POSIX does not want network
		 * errors returned from accept().
		 */
		FUNC15(sk, req, prev);
		goto out;

	case DCCP_REQUESTING:
	case DCCP_RESPOND:
		if (!FUNC22(sk)) {
			FUNC0(DCCP_MIB_ATTEMPTFAILS);
			sk->sk_err = err;

			sk->sk_error_report(sk);

			FUNC9(sk);
		} else
			sk->sk_err_soft = err;
		goto out;
	}

	/* If we've already connected we will keep trying
	 * until we time out, or the user gives up.
	 *
	 * rfc1122 4.2.3.9 allows to consider as hard errors
	 * only PROTO_UNREACH and PORT_UNREACH (well, FRAG_FAILED too,
	 * but it is obsoleted by pmtu discovery).
	 *
	 * Note, that in modern internet, where routing is unreliable
	 * and in each dark corner broken firewalls sit, sending random
	 * errors ordered by their masters even this two messages finally lose
	 * their original sense (even Linux sends invalid PORT_UNREACHs)
	 *
	 * Now we are in compliance with RFCs.
	 *							--ANK (980905)
	 */

	inet = FUNC19(sk);
	if (!FUNC22(sk) && inet->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else /* Only an error on timeout */
		sk->sk_err_soft = err;
out:
	FUNC7(sk);
	FUNC23(sk);
}