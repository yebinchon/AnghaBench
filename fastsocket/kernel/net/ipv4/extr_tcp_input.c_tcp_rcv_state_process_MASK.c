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
struct tcphdr {scalar_t__ fin; int /*<<< orphan*/  window; scalar_t__ ack; int /*<<< orphan*/  syn; int /*<<< orphan*/  rst; } ;
struct TYPE_4__ {int snd_wscale; int /*<<< orphan*/  tstamp_ok; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int snd_wnd; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  write_seq; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  linger2; int /*<<< orphan*/  lsndtime; int /*<<< orphan*/  advmss; TYPE_1__ rx_opt; int /*<<< orphan*/  copied_seq; } ;
struct sock {int sk_state; int sk_shutdown; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_dst_cache; int /*<<< orphan*/  sk_socket; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {TYPE_2__* icsk_af_ops; } ;
struct TYPE_6__ {scalar_t__ end_seq; scalar_t__ seq; int /*<<< orphan*/  ack_seq; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* rebuild_header ) (struct sock*) ;int /*<<< orphan*/  (* conn_request ) (struct sock*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_SLOWPATH ; 
 int /*<<< orphan*/  LINUX_MIB_TCPABORTONDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_WAKE_IO ; 
 int /*<<< orphan*/  TCPOLEN_TSTAMP_ALIGNED ; 
#define  TCP_CLOSE 137 
#define  TCP_CLOSE_WAIT 136 
#define  TCP_CLOSING 135 
#define  TCP_ESTABLISHED 134 
#define  TCP_FIN_WAIT1 133 
#define  TCP_FIN_WAIT2 132 
#define  TCP_LAST_ACK 131 
#define  TCP_LISTEN 130 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
#define  TCP_SYN_RECV 129 
#define  TCP_SYN_SENT 128 
 int TCP_TIMEWAIT_LEN ; 
 int TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 scalar_t__ FUNC19 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct tcp_sock*) ; 
 int FUNC25 (struct sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*) ; 
 int /*<<< orphan*/  FUNC29 (struct tcp_sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (struct sock*) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 
 int FUNC32 (struct sock*,struct sk_buff*,struct tcphdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (struct tcp_sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (struct sock*) ; 
 int /*<<< orphan*/  FUNC35 (struct sock*,int) ; 
 struct tcp_sock* FUNC36 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 
 int /*<<< orphan*/  FUNC37 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC38 (struct sock*) ; 
 int /*<<< orphan*/  FUNC39 (struct sock*,struct sk_buff*,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC40 (struct sock*,struct sk_buff*,struct tcphdr*,int /*<<< orphan*/ ) ; 

int FUNC41(struct sock *sk, struct sk_buff *skb,
			  struct tcphdr *th, unsigned len)
{
	struct tcp_sock *tp = FUNC36(sk);
	struct inet_connection_sock *icsk = FUNC6(sk);
	int queued = 0;

	tp->rx_opt.saw_tstamp = 0;

	switch (sk->sk_state) {
	case TCP_CLOSE:
		goto discard;

	case TCP_LISTEN:
		if (th->ack)
			return 1;

		if (th->rst)
			goto discard;

		if (th->syn) {
			if (th->fin)
				goto discard;
			if (icsk->icsk_af_ops->conn_request(sk, skb) < 0)
				return 1;

			/* Now we have several options: In theory there is
			 * nothing else in the frame. KA9Q has an option to
			 * send data with the syn, BSD accepts data with the
			 * syn up to the [to be] advertised window and
			 * Solaris 2.1 gives you a protocol error. For now
			 * we just ignore it, that fits the spec precisely
			 * and avoids incompatibilities. It would be nice in
			 * future to drop through and process the data.
			 *
			 * Now that TTCP is starting to be used we ought to
			 * queue this data.
			 * But, this leaves one open to an easy denial of
			 * service attack, and SYN cookies can't defend
			 * against this problem. So, we drop the data
			 * in the interest of security over speed unless
			 * it's still in use.
			 */
			FUNC8(skb);
			return 0;
		}
		goto discard;

	case TCP_SYN_SENT:
		queued = FUNC32(sk, skb, th, len);
		if (queued >= 0)
			return queued;

		/* Do step6 onward by hand. */
		FUNC39(sk, skb, th);
		FUNC2(skb);
		FUNC22(sk);
		return 0;
	}

	if (!FUNC40(sk, skb, th, 0))
		return 0;

	/* step 5: check the ACK field */
	if (th->ack) {
		int acceptable = FUNC19(sk, skb, FLAG_SLOWPATH) > 0;

		switch (sk->sk_state) {
		case TCP_SYN_RECV:
			if (acceptable) {
				tp->copied_seq = tp->rcv_nxt;
				FUNC11();
				FUNC35(sk, TCP_ESTABLISHED);
				sk->sk_state_change(sk);

				/* Note, that this wakeup is only for marginal
				 * crossed SYN case. Passively open sockets
				 * are not waked up, because sk->sk_sleep ==
				 * NULL and sk->sk_socket == NULL.
				 */
				if (sk->sk_socket)
					FUNC10(sk,
						      SOCK_WAKE_IO, POLL_OUT);

				tp->snd_una = FUNC1(skb)->ack_seq;
				tp->snd_wnd = FUNC9(th->window) <<
					      tp->rx_opt.snd_wscale;
				FUNC29(tp, FUNC1(skb)->seq);

				if (tp->rx_opt.tstamp_ok)
					tp->advmss -= TCPOLEN_TSTAMP_ALIGNED;

				/* Make sure socket is routed, for
				 * correct metrics.
				 */
				icsk->icsk_af_ops->rebuild_header(sk);

				FUNC28(sk);

				FUNC27(sk);

				/* Prevent spurious tcp_cwnd_restart() on
				 * first data packet.
				 */
				tp->lsndtime = tcp_time_stamp;

				FUNC31(sk);
				FUNC30(sk);
				FUNC26(sk);
				FUNC24(tp);
			} else {
				return 1;
			}
			break;

		case TCP_FIN_WAIT1:
			if (tp->snd_una == tp->write_seq) {
				FUNC35(sk, TCP_FIN_WAIT2);
				sk->sk_shutdown |= SEND_SHUTDOWN;
				FUNC5(sk->sk_dst_cache);

				if (!FUNC12(sk, SOCK_DEAD))
					/* Wake up lingering close() */
					sk->sk_state_change(sk);
				else {
					int tmo;

					if (tp->linger2 < 0 ||
					    (FUNC1(skb)->end_seq != FUNC1(skb)->seq &&
					     FUNC3(FUNC1(skb)->end_seq - th->fin, tp->rcv_nxt))) {
						FUNC23(sk);
						FUNC0(FUNC13(sk), LINUX_MIB_TCPABORTONDATA);
						return 1;
					}

					tmo = FUNC25(sk);
					if (tmo > TCP_TIMEWAIT_LEN) {
						FUNC7(sk, tmo - TCP_TIMEWAIT_LEN);
					} else if (th->fin || FUNC14(sk)) {
						/* Bad case. We could lose such FIN otherwise.
						 * It is not a big problem, but it looks confusing
						 * and not so rare event. We still can lose it now,
						 * if it spins in bh_lock_sock(), but it is really
						 * marginal case.
						 */
						FUNC7(sk, tmo);
					} else {
						FUNC37(sk, TCP_FIN_WAIT2, tmo);
						goto discard;
					}
				}
			}
			break;

		case TCP_CLOSING:
			if (tp->snd_una == tp->write_seq) {
				FUNC37(sk, TCP_TIME_WAIT, 0);
				goto discard;
			}
			break;

		case TCP_LAST_ACK:
			if (tp->snd_una == tp->write_seq) {
				FUNC38(sk);
				FUNC23(sk);
				goto discard;
			}
			break;
		}
	} else
		goto discard;

	/* ts_recent update must be made after we are sure that the packet
	 * is in window.
	 */
	FUNC33(tp, FUNC1(skb)->seq);

	/* step 6: check the URG bit */
	FUNC39(sk, skb, th);

	/* step 7: process the segment text */
	switch (sk->sk_state) {
	case TCP_CLOSE_WAIT:
	case TCP_CLOSING:
	case TCP_LAST_ACK:
		if (!FUNC4(FUNC1(skb)->seq, tp->rcv_nxt))
			break;
	case TCP_FIN_WAIT1:
	case TCP_FIN_WAIT2:
		/* RFC 793 says to queue data in these states,
		 * RFC 1122 says we MUST send a reset.
		 * BSD 4.4 also does reset.
		 */
		if (sk->sk_shutdown & RCV_SHUTDOWN) {
			if (FUNC1(skb)->end_seq != FUNC1(skb)->seq &&
			    FUNC3(FUNC1(skb)->end_seq - th->fin, tp->rcv_nxt)) {
				FUNC0(FUNC13(sk), LINUX_MIB_TCPABORTONDATA);
				FUNC34(sk);
				return 1;
			}
		}
		/* Fall through */
	case TCP_ESTABLISHED:
		FUNC21(sk, skb);
		queued = 1;
		break;
	}

	/* tcp_data could move socket to TIME-WAIT */
	if (sk->sk_state != TCP_CLOSE) {
		FUNC22(sk);
		FUNC20(sk);
	}

	if (!queued) {
discard:
		FUNC2(skb);
	}
	return 0;
}