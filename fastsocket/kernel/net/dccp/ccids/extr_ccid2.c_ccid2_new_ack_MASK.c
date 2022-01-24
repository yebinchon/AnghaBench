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
struct sock {int dummy; } ;
struct ccid2_seq {scalar_t__ ccid2s_seq; scalar_t__ ccid2s_sent; } ;
struct ccid2_hc_tx_sock {int ccid2hctx_cwnd; int ccid2hctx_ssthresh; int ccid2hctx_packets_acked; int ccid2hctx_srtt; unsigned long ccid2hctx_rttvar; int ccid2hctx_rto; scalar_t__ ccid2hctx_lastrtt; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ccid2_hc_tx_sock*,long) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct ccid2_hc_tx_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC6(struct sock *sk,
				 struct ccid2_seq *seqp,
				 unsigned int *maxincr)
{
	struct ccid2_hc_tx_sock *hctx = FUNC2(sk);

	if (hctx->ccid2hctx_cwnd < hctx->ccid2hctx_ssthresh) {
		if (*maxincr > 0 && ++hctx->ccid2hctx_packets_acked == 2) {
			hctx->ccid2hctx_cwnd += 1;
			*maxincr	     -= 1;
			hctx->ccid2hctx_packets_acked = 0;
		}
	} else if (++hctx->ccid2hctx_packets_acked >= hctx->ccid2hctx_cwnd) {
			hctx->ccid2hctx_cwnd += 1;
			hctx->ccid2hctx_packets_acked = 0;
	}

	/* update RTO */
	if (hctx->ccid2hctx_srtt == -1 ||
	    FUNC5(jiffies, hctx->ccid2hctx_lastrtt + hctx->ccid2hctx_srtt)) {
		unsigned long r = (long)jiffies - (long)seqp->ccid2s_sent;
		int s;

		/* first measurement */
		if (hctx->ccid2hctx_srtt == -1) {
			FUNC3("R: %lu Time=%lu seq=%llu\n",
				       r, jiffies,
				       (unsigned long long)seqp->ccid2s_seq);
			FUNC0(hctx, r);
			hctx->ccid2hctx_rttvar = r >> 1;
		} else {
			/* RTTVAR */
			long tmp = hctx->ccid2hctx_srtt - r;
			long srtt;

			if (tmp < 0)
				tmp *= -1;

			tmp >>= 2;
			hctx->ccid2hctx_rttvar *= 3;
			hctx->ccid2hctx_rttvar >>= 2;
			hctx->ccid2hctx_rttvar += tmp;

			/* SRTT */
			srtt = hctx->ccid2hctx_srtt;
			srtt *= 7;
			srtt >>= 3;
			tmp = r >> 3;
			srtt += tmp;
			FUNC0(hctx, srtt);
		}
		s = hctx->ccid2hctx_rttvar << 2;
		/* clock granularity is 1 when based on jiffies */
		if (!s)
			s = 1;
		hctx->ccid2hctx_rto = hctx->ccid2hctx_srtt + s;

		/* must be at least a second */
		s = hctx->ccid2hctx_rto / HZ;
		/* DCCP doesn't require this [but I like it cuz my code sux] */
#if 1
		if (s < 1)
			hctx->ccid2hctx_rto = HZ;
#endif
		/* max 60 seconds */
		if (s > 60)
			hctx->ccid2hctx_rto = HZ * 60;

		hctx->ccid2hctx_lastrtt = jiffies;

		FUNC3("srtt: %ld rttvar: %ld rto: %ld (HZ=%d) R=%lu\n",
			       hctx->ccid2hctx_srtt, hctx->ccid2hctx_rttvar,
			       hctx->ccid2hctx_rto, HZ, r);
	}

	/* we got a new ack, so re-start RTO timer */
	FUNC1(sk);
	FUNC4(sk);
}