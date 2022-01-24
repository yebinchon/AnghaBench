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
struct tcphdr {int dummy; } ;
struct TYPE_7__ {int snd_wscale; int rcv_wscale; int /*<<< orphan*/  mss_clamp; scalar_t__ ts_recent_stamp; int /*<<< orphan*/  ts_recent; scalar_t__ tstamp_ok; scalar_t__ wscale_ok; int /*<<< orphan*/  sack_ok; scalar_t__ num_sacks; scalar_t__ dsack; scalar_t__ saw_tstamp; } ;
struct tcp_sock {int snd_wnd; int max_window; int tcp_header_len; TYPE_3__ rx_opt; TYPE_1__* af_specific; int /*<<< orphan*/ * md5sig_info; int /*<<< orphan*/  window_clamp; int /*<<< orphan*/  rcv_wnd; int /*<<< orphan*/  rcv_ssthresh; scalar_t__ urg_data; scalar_t__ write_seq; scalar_t__ pushed_seq; int /*<<< orphan*/  out_of_order_queue; scalar_t__ frto_highmark; scalar_t__ frto_counter; scalar_t__ bytes_acked; scalar_t__ snd_cwnd_cnt; int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  snd_ssthresh; scalar_t__ fackets_out; scalar_t__ sacked_out; scalar_t__ retrans_out; scalar_t__ packets_out; void* mdev; scalar_t__ srtt; int /*<<< orphan*/  tsq_node; scalar_t__ snd_up; scalar_t__ snd_nxt; scalar_t__ snd_una; scalar_t__ snd_sml; scalar_t__ rcv_nxt; scalar_t__ copied_seq; scalar_t__ rcv_wup; scalar_t__ pred_flags; } ;
struct tcp_request_sock {scalar_t__ snt_isn; scalar_t__ rcv_isn; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct request_sock {int /*<<< orphan*/  mss; int /*<<< orphan*/  ts_recent; int /*<<< orphan*/  rcv_wnd; int /*<<< orphan*/  window_clamp; } ;
struct inet_request_sock {int snd_wscale; int rcv_wscale; scalar_t__ wscale_ok; int /*<<< orphan*/  sack_ok; scalar_t__ tstamp_ok; } ;
struct TYPE_6__ {scalar_t__ last_seg_size; } ;
struct inet_connection_sock {TYPE_2__ icsk_ack; int /*<<< orphan*/ * icsk_ca_ops; void* icsk_rto; } ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
struct TYPE_5__ {scalar_t__ (* md5_lookup ) (struct sock*,struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_KEEPOPEN ; 
 int /*<<< orphan*/  SOCK_PASSIVE_OPEN ; 
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ; 
 int TCPOLEN_TSTAMP_ALIGNED ; 
 int /*<<< orphan*/  TCP_CA_Open ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_INFINITE_SSTHRESH ; 
 int /*<<< orphan*/  TCP_INIT_CWND ; 
 int /*<<< orphan*/  TCP_MIB_PASSIVEOPENS ; 
 scalar_t__ TCP_MIN_RCVMSS ; 
 void* TCP_TIMEOUT_INIT ; 
 scalar_t__ FUNC3 () ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 struct sock* FUNC5 (struct sock*,struct request_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct inet_request_sock* FUNC7 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sock*,struct sock*) ; 
 scalar_t__ sysctl_tcp_fack ; 
 int /*<<< orphan*/  FUNC16 (struct tcp_sock*) ; 
 TYPE_4__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  tcp_init_congestion_ops ; 
 int /*<<< orphan*/  FUNC18 (struct tcp_sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct tcp_sock*) ; 
 struct tcp_request_sock* FUNC21 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC23 (struct sock*) ; 

struct sock *FUNC24(struct sock *sk, struct request_sock *req, struct sk_buff *skb)
{
	struct sock *newsk = FUNC5(sk, req, GFP_ATOMIC);

	if (newsk != NULL) {
		const struct inet_request_sock *ireq = FUNC7(req);
		struct tcp_request_sock *treq = FUNC21(req);
		struct inet_connection_sock *newicsk = FUNC4(newsk);
		struct tcp_sock *newtp;

		/* Now setup tcp_sock */
		newtp = FUNC23(newsk);
		newtp->pred_flags = 0;
		newtp->rcv_wup = newtp->copied_seq = newtp->rcv_nxt = treq->rcv_isn + 1;
		newtp->snd_sml = newtp->snd_una = newtp->snd_nxt = treq->snt_isn + 1;
		newtp->snd_up = treq->snt_isn + 1;

		FUNC20(newtp);
		FUNC0(&newtp->tsq_node);

		FUNC18(newtp, treq->rcv_isn);

		newtp->srtt = 0;
		newtp->mdev = TCP_TIMEOUT_INIT;
		newicsk->icsk_rto = TCP_TIMEOUT_INIT;

		newtp->packets_out = 0;
		newtp->retrans_out = 0;
		newtp->sacked_out = 0;
		newtp->fackets_out = 0;
		newtp->snd_ssthresh = TCP_INFINITE_SSTHRESH;

		/* So many TCP implementations out there (incorrectly) count the
		 * initial SYN frame in their delayed-ACK and congestion control
		 * algorithms that we must have the following bandaid to talk
		 * efficiently to them.  -DaveM
		 */
		newtp->snd_cwnd = TCP_INIT_CWND;
		newtp->snd_cwnd_cnt = 0;
		newtp->bytes_acked = 0;

		newtp->frto_counter = 0;
		newtp->frto_highmark = 0;

		newicsk->icsk_ca_ops = &tcp_init_congestion_ops;

		FUNC22(newsk, TCP_CA_Open);
		FUNC19(newsk);
		FUNC11(&newtp->out_of_order_queue);
		newtp->write_seq = treq->snt_isn + 1;
		newtp->pushed_seq = newtp->write_seq;

		newtp->rx_opt.saw_tstamp = 0;

		newtp->rx_opt.dsack = 0;
		newtp->rx_opt.num_sacks = 0;

		newtp->urg_data = 0;

		if (FUNC12(newsk, SOCK_KEEPOPEN))
			FUNC6(newsk,
						       FUNC8(newtp));

		newtp->rx_opt.tstamp_ok = ireq->tstamp_ok;
		if ((newtp->rx_opt.sack_ok = ireq->sack_ok) != 0) {
			if (sysctl_tcp_fack)
				FUNC16(newtp);
		}
		newtp->window_clamp = req->window_clamp;
		newtp->rcv_ssthresh = req->rcv_wnd;
		newtp->rcv_wnd = req->rcv_wnd;
		newtp->rx_opt.wscale_ok = ireq->wscale_ok;
		if (newtp->rx_opt.wscale_ok) {
			newtp->rx_opt.snd_wscale = ireq->snd_wscale;
			newtp->rx_opt.rcv_wscale = ireq->rcv_wscale;
		} else {
			newtp->rx_opt.snd_wscale = newtp->rx_opt.rcv_wscale = 0;
			newtp->window_clamp = FUNC9(newtp->window_clamp, 65535U);
		}
		newtp->snd_wnd = (FUNC10(FUNC17(skb)->window) <<
				  newtp->rx_opt.snd_wscale);
		newtp->max_window = newtp->snd_wnd;

		if (newtp->rx_opt.tstamp_ok) {
			newtp->rx_opt.ts_recent = req->ts_recent;
			newtp->rx_opt.ts_recent_stamp = FUNC3();
			newtp->tcp_header_len = sizeof(struct tcphdr) + TCPOLEN_TSTAMP_ALIGNED;
		} else {
			newtp->rx_opt.ts_recent_stamp = 0;
			newtp->tcp_header_len = sizeof(struct tcphdr);
		}
#ifdef CONFIG_TCP_MD5SIG
		newtp->md5sig_info = NULL;	/*XXX*/
		if (newtp->af_specific->md5_lookup(sk, newsk))
			newtp->tcp_header_len += TCPOLEN_MD5SIG_ALIGNED;
#endif
		if (skb->len >= TCP_MIN_RCVMSS+newtp->tcp_header_len)
			newicsk->icsk_ack.last_seg_size = skb->len - newtp->tcp_header_len;
		newtp->rx_opt.mss_clamp = req->mss;
		FUNC1(newtp, req);

		FUNC14(newsk, SOCK_PASSIVE_OPEN);
		FUNC2(FUNC13(sk), TCP_MIB_PASSIVEOPENS);
	}
	return newsk;
}