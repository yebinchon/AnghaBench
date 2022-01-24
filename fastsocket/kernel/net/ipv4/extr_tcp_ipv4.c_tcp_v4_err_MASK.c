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
typedef  int /*<<< orphan*/  u32 ;
struct tcphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  seq; int /*<<< orphan*/  source; } ;
struct tcp_sock {int snd_una; int /*<<< orphan*/  srtt; int /*<<< orphan*/  snd_nxt; } ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {int len; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct request_sock {int /*<<< orphan*/  sk; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet_sock {scalar_t__ recverr; } ;
struct inet_connection_sock {int icsk_backoff; int icsk_rto; int /*<<< orphan*/  icsk_retransmits; } ;
typedef  int __u32 ;
struct TYPE_8__ {scalar_t__ when; } ;
struct TYPE_7__ {int errno; } ;
struct TYPE_6__ {int type; int code; } ;
struct TYPE_5__ {int snt_isn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EHOSTUNREACH ; 
 int EPROTO ; 
#define  ICMP_DEST_UNREACH 134 
 int const ICMP_FRAG_NEEDED ; 
 int const ICMP_HOST_UNREACH ; 
 int /*<<< orphan*/  FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
 int const ICMP_NET_UNREACH ; 
#define  ICMP_PARAMETERPROB 133 
#define  ICMP_SOURCE_QUENCH 132 
#define  ICMP_TIME_EXCEEDED 131 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  LINUX_MIB_LOCKDROPPEDICMPS ; 
 int /*<<< orphan*/  LINUX_MIB_OUTOFWINDOWICMPS ; 
 int /*<<< orphan*/  FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int const NR_ICMP_UNREACH ; 
 int TCP_CLOSE ; 
#define  TCP_LISTEN 130 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_4__* FUNC3 (struct sk_buff*) ; 
#define  TCP_SYN_RECV 129 
#define  TCP_SYN_SENT 128 
 int TCP_TIMEOUT_INIT ; 
 int TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 struct net* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct iphdr*,int /*<<< orphan*/ ) ; 
 TYPE_3__* icmp_err_convert ; 
 TYPE_2__* FUNC11 (struct sk_buff*) ; 
 struct inet_connection_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*,struct request_sock*,struct request_sock**) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct request_sock* FUNC15 (struct sock*,struct request_sock***,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 struct sock* FUNC17 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_sock* FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int,scalar_t__) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*) ; 
 int /*<<< orphan*/  tcp_hashinfo ; 
 int /*<<< orphan*/  FUNC29 (struct sock*) ; 
 TYPE_1__* FUNC30 (struct request_sock*) ; 
 struct tcp_sock* FUNC31 (struct sock*) ; 
 scalar_t__ tcp_time_stamp ; 
 struct sk_buff* FUNC32 (struct sock*) ; 

void FUNC33(struct sk_buff *icmp_skb, u32 info)
{
	struct iphdr *iph = (struct iphdr *)icmp_skb->data;
	struct tcphdr *th = (struct tcphdr *)(icmp_skb->data + (iph->ihl << 2));
	struct inet_connection_sock *icsk;
	struct tcp_sock *tp;
	struct inet_sock *inet;
	const int type = FUNC11(icmp_skb)->type;
	const int code = FUNC11(icmp_skb)->code;
	struct sock *sk;
	struct sk_buff *skb;
	__u32 seq;
	__u32 remaining;
	int err;
	struct net *net = FUNC9(icmp_skb->dev);

	if (icmp_skb->len < (iph->ihl << 2) + 8) {
		FUNC1(net, ICMP_MIB_INERRORS);
		return;
	}

	sk = FUNC17(net, &tcp_hashinfo, iph->daddr, th->dest,
			iph->saddr, th->source, FUNC16(icmp_skb));
	if (!sk) {
		FUNC1(net, ICMP_MIB_INERRORS);
		return;
	}
	if (sk->sk_state == TCP_TIME_WAIT) {
		FUNC20(FUNC19(sk));
		return;
	}

	FUNC7(sk);
	/* If too many ICMPs get dropped on busy
	 * servers this needs to be solved differently.
	 */
	if (FUNC23(sk))
		FUNC2(net, LINUX_MIB_LOCKDROPPEDICMPS);

	if (sk->sk_state == TCP_CLOSE)
		goto out;

	icsk = FUNC12(sk);
	tp = FUNC31(sk);
	seq = FUNC22(th->seq);
	if (sk->sk_state != TCP_LISTEN &&
	    !FUNC6(seq, tp->snd_una, tp->snd_nxt)) {
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
			if (!FUNC23(sk))
				FUNC10(sk, iph, info);
			goto out;
		}

		err = icmp_err_convert[code].errno;
		/* check if icmp_skb allows revert of backoff
		 * (see draft-zimmermann-tcp-lcd) */
		if (code != ICMP_NET_UNREACH && code != ICMP_HOST_UNREACH)
			break;
		if (seq != tp->snd_una  || !icsk->icsk_retransmits ||
		    !icsk->icsk_backoff)
			break;

		if (FUNC23(sk))
			break;

		icsk->icsk_backoff--;
		FUNC12(sk)->icsk_rto = (tp->srtt ? FUNC5(tp) :
			TCP_TIMEOUT_INIT) << icsk->icsk_backoff;
		FUNC27(sk);

		skb = FUNC32(sk);
		FUNC0(!skb);

		remaining = icsk->icsk_rto - FUNC21(icsk->icsk_rto,
				tcp_time_stamp - FUNC3(skb)->when);

		if (remaining) {
			FUNC14(sk, ICSK_TIME_RETRANS,
						  remaining, TCP_RTO_MAX);
		} else {
			/* RTO revert clocked out retransmission.
			 * Will retransmit now */
			FUNC29(sk);
		}

		break;
	case ICMP_TIME_EXCEEDED:
		err = EHOSTUNREACH;
		break;
	default:
		goto out;
	}

	switch (sk->sk_state) {
		struct request_sock *req, **prev;
	case TCP_LISTEN:
		if (FUNC23(sk))
			goto out;

		req = FUNC15(sk, &prev, th->dest,
					  iph->daddr, iph->saddr);
		if (!req)
			goto out;

		/* ICMPs are not backlogged, hence we cannot get
		   an established socket here.
		 */
		FUNC4(req->sk);

		if (seq != FUNC30(req)->snt_isn) {
			FUNC2(net, LINUX_MIB_OUTOFWINDOWICMPS);
			goto out;
		}

		/*
		 * Still in SYN_RECV, just remove it silently.
		 * There is no good way to pass the error to the newly
		 * created socket, and POSIX does not want network
		 * errors returned from accept().
		 */
		FUNC13(sk, req, prev);
		goto out;

	case TCP_SYN_SENT:
	case TCP_SYN_RECV:  /* Cannot happen.
			       It can f.e. if SYNs crossed.
			     */
		if (!FUNC23(sk)) {
			sk->sk_err = err;

			sk->sk_error_report(sk);

			FUNC28(sk);
		} else {
			sk->sk_err_soft = err;
		}
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

	inet = FUNC18(sk);
	if (!FUNC23(sk) && inet->recverr) {
		sk->sk_err = err;
		sk->sk_error_report(sk);
	} else	{ /* Only an error on timeout */
		sk->sk_err_soft = err;
	}

out:
	FUNC8(sk);
	FUNC24(sk);
}