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
struct tcp_sock {unsigned long srtt; int mdev; int snd_cwnd; int snd_ssthresh; int reordering; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; scalar_t__ icsk_backoff; } ;
struct dst_entry {int flags; int* metrics; } ;

/* Variables and functions */
 int DST_HOST ; 
 int RTAX_CWND ; 
 int RTAX_REORDERING ; 
 int RTAX_RTT ; 
 int RTAX_RTTVAR ; 
 int RTAX_SSTHRESH ; 
 scalar_t__ TCP_CA_Open ; 
 struct dst_entry* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int FUNC2 (struct dst_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*,int) ; 
 unsigned long FUNC4 (struct dst_entry*,int) ; 
 struct inet_connection_sock* FUNC5 (struct sock*) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_entry*,int,unsigned long) ; 
 scalar_t__ sysctl_tcp_nometrics_save ; 
 int sysctl_tcp_reordering ; 
 scalar_t__ FUNC8 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

void FUNC10(struct sock *sk)
{
	struct tcp_sock *tp = FUNC9(sk);
	struct dst_entry *dst = FUNC0(sk);

	if (sysctl_tcp_nometrics_save)
		return;

	FUNC1(dst);

	if (dst && (dst->flags & DST_HOST)) {
		const struct inet_connection_sock *icsk = FUNC5(sk);
		int m;
		unsigned long rtt;

		if (icsk->icsk_backoff || !tp->srtt) {
			/* This session failed to estimate rtt. Why?
			 * Probably, no packets returned in time.
			 * Reset our results.
			 */
			if (!(FUNC3(dst, RTAX_RTT)))
				dst->metrics[RTAX_RTT - 1] = 0;
			return;
		}

		rtt = FUNC4(dst, RTAX_RTT);
		m = rtt - tp->srtt;

		/* If newly calculated rtt larger than stored one,
		 * store new one. Otherwise, use EWMA. Remember,
		 * rtt overestimation is always better than underestimation.
		 */
		if (!(FUNC3(dst, RTAX_RTT))) {
			if (m <= 0)
				FUNC7(dst, RTAX_RTT, tp->srtt);
			else
				FUNC7(dst, RTAX_RTT, rtt - (m >> 3));
		}

		if (!(FUNC3(dst, RTAX_RTTVAR))) {
			unsigned long var;
			if (m < 0)
				m = -m;

			/* Scale deviation to rttvar fixed point */
			m >>= 1;
			if (m < tp->mdev)
				m = tp->mdev;

			var = FUNC4(dst, RTAX_RTTVAR);
			if (m >= var)
				var = m;
			else
				var -= (var - m) >> 2;

			FUNC7(dst, RTAX_RTTVAR, var);
		}

		if (FUNC8(tp)) {
			/* Slow start still did not finish. */
			if (FUNC2(dst, RTAX_SSTHRESH) &&
			    !FUNC3(dst, RTAX_SSTHRESH) &&
			    (tp->snd_cwnd >> 1) > FUNC2(dst, RTAX_SSTHRESH))
				dst->metrics[RTAX_SSTHRESH-1] = tp->snd_cwnd >> 1;
			if (!FUNC3(dst, RTAX_CWND) &&
			    tp->snd_cwnd > FUNC2(dst, RTAX_CWND))
				dst->metrics[RTAX_CWND - 1] = tp->snd_cwnd;
		} else if (tp->snd_cwnd > tp->snd_ssthresh &&
			   icsk->icsk_ca_state == TCP_CA_Open) {
			/* Cong. avoidance phase, cwnd is reliable. */
			if (!FUNC3(dst, RTAX_SSTHRESH))
				dst->metrics[RTAX_SSTHRESH-1] =
					FUNC6(tp->snd_cwnd >> 1, tp->snd_ssthresh);
			if (!FUNC3(dst, RTAX_CWND))
				dst->metrics[RTAX_CWND-1] = (FUNC2(dst, RTAX_CWND) + tp->snd_cwnd) >> 1;
		} else {
			/* Else slow start did not finish, cwnd is non-sense,
			   ssthresh may be also invalid.
			 */
			if (!FUNC3(dst, RTAX_CWND))
				dst->metrics[RTAX_CWND-1] = (FUNC2(dst, RTAX_CWND) + tp->snd_ssthresh) >> 1;
			if (FUNC2(dst, RTAX_SSTHRESH) &&
			    !FUNC3(dst, RTAX_SSTHRESH) &&
			    tp->snd_ssthresh > FUNC2(dst, RTAX_SSTHRESH))
				dst->metrics[RTAX_SSTHRESH-1] = tp->snd_ssthresh;
		}

		if (!FUNC3(dst, RTAX_REORDERING)) {
			if (FUNC2(dst, RTAX_REORDERING) < tp->reordering &&
			    tp->reordering != sysctl_tcp_reordering)
				dst->metrics[RTAX_REORDERING-1] = tp->reordering;
		}
	}
}