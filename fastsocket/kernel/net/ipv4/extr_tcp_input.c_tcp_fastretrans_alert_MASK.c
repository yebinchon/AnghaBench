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
struct TYPE_5__ {int /*<<< orphan*/  probe_seq_start; } ;
struct tcp_sock {scalar_t__ reordering; scalar_t__ fackets_out; scalar_t__ retrans_out; scalar_t__ undo_retrans; int prr_delivered; int /*<<< orphan*/  prr_out; int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  prior_cwnd; int /*<<< orphan*/  snd_cwnd_cnt; int /*<<< orphan*/  bytes_acked; int /*<<< orphan*/  snd_ssthresh; scalar_t__ prior_ssthresh; int /*<<< orphan*/  snd_una; int /*<<< orphan*/  undo_marker; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  high_seq; TYPE_2__ mtu_probe; scalar_t__ retrans_stamp; scalar_t__ sacked_out; int /*<<< orphan*/  packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  probe_size; } ;
struct inet_connection_sock {int const icsk_ca_state; TYPE_3__* icsk_ca_ops; TYPE_1__ icsk_mtup; int /*<<< orphan*/  icsk_retransmits; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* ssthresh ) (struct sock*) ;} ;

/* Variables and functions */
 int FLAG_DATA_ACKED ; 
 int FLAG_DATA_LOST ; 
 int FLAG_DATA_SACKED ; 
 int FLAG_ECE ; 
 int FLAG_SND_UNA_ADVANCED ; 
 int LINUX_MIB_TCPLOSS ; 
 int LINUX_MIB_TCPRENORECOVERY ; 
 int LINUX_MIB_TCPSACKRECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
#define  TCP_CA_CWR 130 
 int const TCP_CA_Disorder ; 
#define  TCP_CA_Loss 129 
 int const TCP_CA_Open ; 
#define  TCP_CA_Recovery 128 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (struct tcp_sock*) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*,int const) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 struct tcp_sock* FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*) ; 
 int /*<<< orphan*/  FUNC25 (struct sock*) ; 
 int FUNC26 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,int,int,int) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*) ; 

__attribute__((used)) static void FUNC32(struct sock *sk, int pkts_acked,
				  int newly_acked_sacked, bool is_dupack,
				  int flag)
{
	struct inet_connection_sock *icsk = FUNC4(sk);
	struct tcp_sock *tp = FUNC21(sk);
	int do_lost = is_dupack || ((flag & FLAG_DATA_SACKED) &&
				    (FUNC11(tp) > tp->reordering));
	int fast_rexmit = 0, mib_idx;

	if (FUNC2(!tp->packets_out && tp->sacked_out))
		tp->sacked_out = 0;
	if (FUNC2(!tp->sacked_out && tp->fackets_out))
		tp->fackets_out = 0;

	/* Now state machine starts.
	 * A. ECE, hence prohibit cwnd undoing, the reduction is required. */
	if (flag & FLAG_ECE)
		tp->prior_ssthresh = 0;

	/* B. In all the states check for reneging SACKs. */
	if (FUNC8(sk, flag))
		return;

	/* C. Process data loss notification, provided it is valid. */
	if (FUNC13(tp) && (flag & FLAG_DATA_LOST) &&
	    FUNC3(tp->snd_una, tp->high_seq) &&
	    icsk->icsk_ca_state != TCP_CA_Open &&
	    tp->fackets_out > tp->reordering) {
		FUNC15(sk, tp->fackets_out - tp->reordering);
		FUNC0(FUNC5(sk), LINUX_MIB_TCPLOSS);
	}

	/* D. Check consistency of the current state. */
	FUNC30(tp);

	/* E. Check state exit conditions. State can be terminated
	 *    when high_seq is ACKed. */
	if (icsk->icsk_ca_state == TCP_CA_Open) {
		FUNC2(tp->retrans_out != 0);
		tp->retrans_stamp = 0;
	} else if (!FUNC3(tp->snd_una, tp->high_seq)) {
		switch (icsk->icsk_ca_state) {
		case TCP_CA_Loss:
			icsk->icsk_retransmits = 0;
			if (FUNC27(sk))
				return;
			break;

		case TCP_CA_CWR:
			/* CWR is to be held something *above* high_seq
			 * is ACKed for CWR bit to reach receiver. */
			if (tp->snd_una != tp->high_seq) {
				FUNC9(sk);
				FUNC19(sk, TCP_CA_Open);
			}
			break;

		case TCP_CA_Recovery:
			if (FUNC14(tp))
				FUNC18(tp);
			if (FUNC27(sk))
				return;
			FUNC9(sk);
			break;
		}
	}

	/* F. Process state. */
	switch (icsk->icsk_ca_state) {
	case TCP_CA_Recovery:
		if (!(flag & FLAG_SND_UNA_ADVANCED)) {
			if (FUNC14(tp) && is_dupack)
				FUNC7(sk);
		} else
			do_lost = FUNC26(sk, pkts_acked);
		break;
	case TCP_CA_Loss:
		if (flag & FLAG_DATA_ACKED)
			icsk->icsk_retransmits = 0;
		if (FUNC14(tp) && flag & FLAG_SND_UNA_ADVANCED)
			FUNC18(tp);
		if (!FUNC25(sk)) {
			FUNC16(tp);
			FUNC31(sk);
			return;
		}
		if (icsk->icsk_ca_state != TCP_CA_Open)
			return;
		/* Loss is undone; fall through to processing in Open state. */
	default:
		if (FUNC14(tp)) {
			if (flag & FLAG_SND_UNA_ADVANCED)
				FUNC18(tp);
			if (is_dupack)
				FUNC7(sk);
		}

		if (icsk->icsk_ca_state <= TCP_CA_Disorder)
			FUNC24(sk);

		if (!FUNC22(sk)) {
			FUNC23(sk, flag);
			return;
		}

		/* MTU probe failure: don't reduce cwnd */
		if (icsk->icsk_ca_state < TCP_CA_CWR &&
		    icsk->icsk_mtup.probe_size &&
		    tp->snd_una == tp->mtu_probe.probe_seq_start) {
			FUNC17(sk);
			/* Restores the reduction we did in tcp_mtup_probe() */
			tp->snd_cwnd++;
			FUNC20(sk);
			return;
		}

		/* Otherwise enter Recovery state */

		if (FUNC14(tp))
			mib_idx = LINUX_MIB_TCPRENORECOVERY;
		else
			mib_idx = LINUX_MIB_TCPSACKRECOVERY;

		FUNC0(FUNC5(sk), mib_idx);

		tp->high_seq = tp->snd_nxt;
		tp->prior_ssthresh = 0;
		tp->undo_marker = tp->snd_una;
		tp->undo_retrans = tp->retrans_out;

		if (icsk->icsk_ca_state < TCP_CA_CWR) {
			if (!(flag & FLAG_ECE))
				tp->prior_ssthresh = FUNC10(sk);
			tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
			FUNC1(tp);
		}

		tp->bytes_acked = 0;
		tp->snd_cwnd_cnt = 0;
		tp->prior_cwnd = tp->snd_cwnd;
		tp->prr_delivered = 0;
		tp->prr_out = 0;
		FUNC19(sk, TCP_CA_Recovery);
		fast_rexmit = 1;
	}

	if (do_lost || (FUNC13(tp) && FUNC12(sk)))
		FUNC29(sk, fast_rexmit);
	tp->prr_delivered += newly_acked_sacked;
	FUNC28(sk, newly_acked_sacked, fast_rexmit, flag);
	FUNC31(sk);
}