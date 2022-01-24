#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tcp_sock {int snd_nxt; int write_seq; scalar_t__ max_window; int snd_cwnd; int /*<<< orphan*/  rx_opt; scalar_t__ bytes_acked; scalar_t__ snd_cwnd_cnt; int /*<<< orphan*/  snd_ssthresh; scalar_t__ packets_out; scalar_t__ srtt; int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int sk_state; int sk_userlocks; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;scalar_t__ sk_shutdown; int /*<<< orphan*/  sk_async_wait_queue; int /*<<< orphan*/  sk_receive_queue; void* sk_err; } ;
struct inet_sock {scalar_t__ num; scalar_t__ dport; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_bind_hash; scalar_t__ icsk_probes_out; scalar_t__ icsk_backoff; } ;

/* Variables and functions */
 void* ECONNRESET ; 
 int SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int TCPF_CLOSING ; 
 int TCPF_LAST_ACK ; 
 int /*<<< orphan*/  TCP_CA_Open ; 
 int TCP_CLOSE ; 
 int /*<<< orphan*/  TCP_INFINITE_SSTHRESH ; 
 int TCP_LISTEN ; 
 int TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct inet_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int) ; 
 struct tcp_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 

int FUNC21(struct sock *sk, int flags)
{
	struct inet_sock *inet = FUNC8(sk);
	struct inet_connection_sock *icsk = FUNC4(sk);
	struct tcp_sock *tp = FUNC19(sk);
	int err = 0;
	int old_state = sk->sk_state;

	if (old_state != TCP_CLOSE)
		FUNC18(sk, TCP_CLOSE);

	/* ABORT function of RFC793 */
	if (old_state == TCP_LISTEN) {
		FUNC6(sk);
	} else if (FUNC15(old_state) ||
		   (tp->snd_nxt != tp->write_seq &&
		    (1 << old_state) & (TCPF_CLOSING | TCPF_LAST_ACK))) {
		/* The last check adjusts for discrepancy of Linux wrt. RFC
		 * states
		 */
		FUNC16(sk, FUNC3());
		sk->sk_err = ECONNRESET;
	} else if (old_state == TCP_SYN_SENT)
		sk->sk_err = ECONNRESET;

	FUNC13(sk);
	FUNC2(&sk->sk_receive_queue);
	FUNC20(sk);
	FUNC2(&tp->out_of_order_queue);
#ifdef CONFIG_NET_DMA
	__skb_queue_purge(&sk->sk_async_wait_queue);
#endif

	inet->dport = 0;

	if (!(sk->sk_userlocks & SOCK_BINDADDR_LOCK))
		FUNC7(sk);

	sk->sk_shutdown = 0;
	FUNC10(sk, SOCK_DONE);
	tp->srtt = 0;
	if ((tp->write_seq += tp->max_window + 2) == 0)
		tp->write_seq = 1;
	icsk->icsk_backoff = 0;
	tp->snd_cwnd = 2;
	icsk->icsk_probes_out = 0;
	tp->packets_out = 0;
	tp->snd_ssthresh = TCP_INFINITE_SSTHRESH;
	tp->snd_cwnd_cnt = 0;
	tp->bytes_acked = 0;
	FUNC17(sk, TCP_CA_Open);
	FUNC12(tp);
	FUNC5(sk);
	FUNC14(sk);
	FUNC9(&tp->rx_opt, 0, sizeof(tp->rx_opt));
	FUNC1(sk);

	FUNC0(inet->num && !icsk->icsk_bind_hash);

	sk->sk_error_report(sk);
	return err;
}