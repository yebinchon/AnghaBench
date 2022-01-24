#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {scalar_t__ snd_cwnd_clamp; scalar_t__ snd_ssthresh; scalar_t__ reordering; scalar_t__ srtt; scalar_t__ mdev; scalar_t__ mdev_max; scalar_t__ rttvar; int total_retrans; int snd_cwnd; int /*<<< orphan*/  snd_cwnd_stamp; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  rtt_seq; } ;
struct sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {void* icsk_rto; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_CWND ; 
 int /*<<< orphan*/  RTAX_REORDERING ; 
 int /*<<< orphan*/  RTAX_RTT ; 
 int /*<<< orphan*/  RTAX_RTTVAR ; 
 int /*<<< orphan*/  RTAX_SSTHRESH ; 
 scalar_t__ TCP_INFINITE_SSTHRESH ; 
 void* TCP_TIMEOUT_FALLBACK ; 
 struct dst_entry* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 scalar_t__ FUNC2 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*) ; 
 int FUNC8 (struct tcp_sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 struct tcp_sock* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 

__attribute__((used)) static void FUNC12(struct sock *sk)
{
	struct tcp_sock *tp = FUNC11(sk);
	struct dst_entry *dst = FUNC0(sk);

	if (dst == NULL)
		goto reset;

	FUNC1(dst);

	if (FUNC3(dst, RTAX_CWND))
		tp->snd_cwnd_clamp = FUNC2(dst, RTAX_CWND);
	if (FUNC2(dst, RTAX_SSTHRESH)) {
		tp->snd_ssthresh = FUNC2(dst, RTAX_SSTHRESH);
		if (tp->snd_ssthresh > tp->snd_cwnd_clamp)
			tp->snd_ssthresh = tp->snd_cwnd_clamp;
	} else {
		/* ssthresh may have been reduced unnecessarily during.
		 * 3WHS. Restore it back to its initial default.
		 */
		tp->snd_ssthresh = TCP_INFINITE_SSTHRESH;
	}
	if (FUNC2(dst, RTAX_REORDERING) &&
	    tp->reordering != FUNC2(dst, RTAX_REORDERING)) {
		FUNC7(tp);
		tp->reordering = FUNC2(dst, RTAX_REORDERING);
	}

	if (FUNC2(dst, RTAX_RTT) == 0 || tp->srtt == 0)
		goto reset;

	/* Initial rtt is determined from SYN,SYN-ACK.
	 * The segment is small and rtt may appear much
	 * less than real one. Use per-dst memory
	 * to make it more realistic.
	 *
	 * A bit of theory. RTT is time passed after "normal" sized packet
	 * is sent until it is ACKed. In normal circumstances sending small
	 * packets force peer to delay ACKs and calculation is correct too.
	 * The algorithm is adaptive and, provided we follow specs, it
	 * NEVER underestimate RTT. BUT! If peer tries to make some clever
	 * tricks sort of "quick acks" for time long enough to decrease RTT
	 * to low value, and then abruptly stops to do it and starts to delay
	 * ACKs, wait for troubles.
	 */
	if (FUNC4(dst, RTAX_RTT) > tp->srtt) {
		tp->srtt = FUNC4(dst, RTAX_RTT);
		tp->rtt_seq = tp->snd_nxt;
	}
	if (FUNC4(dst, RTAX_RTTVAR) > tp->mdev) {
		tp->mdev = FUNC4(dst, RTAX_RTTVAR);
		tp->mdev_max = tp->rttvar = FUNC6(tp->mdev, FUNC9(sk));
	}
	FUNC10(sk);
reset:
	if (tp->srtt == 0) {
		/* RFC2988bis: We've failed to get a valid RTT sample from
		 * 3WHS. This is most likely due to retransmission,
		 * including spurious one. Reset the RTO back to 3secs
		 * from the more aggressive 1sec to avoid more spurious
		 * retransmission.
		 */
		tp->mdev = tp->mdev_max = tp->rttvar = TCP_TIMEOUT_FALLBACK;
		FUNC5(sk)->icsk_rto = TCP_TIMEOUT_FALLBACK;
	}
	/* Cut cwnd down to 1 per RFC5681 if SYN or SYN-ACK has been
	 * retransmitted. In light of RFC2988bis' more aggressive 1sec
	 * initRTO, we only reset cwnd when more than 1 SYN/SYN-ACK
	 * retransmission has occurred.
	 */
	if (tp->total_retrans > 1)
		tp->snd_cwnd = 1;
	else
		tp->snd_cwnd = FUNC8(tp, dst);
	tp->snd_cwnd_stamp = tcp_time_stamp;
}