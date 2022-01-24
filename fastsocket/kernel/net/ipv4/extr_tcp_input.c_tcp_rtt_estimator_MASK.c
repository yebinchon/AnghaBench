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
struct tcp_sock {int srtt; int mdev; long mdev_max; long rttvar; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  rtt_seq; int /*<<< orphan*/  snd_una; } ;
struct sock {int dummy; } ;
typedef  long __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (long,int) ; 
 int FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, const __u32 mrtt)
{
	struct tcp_sock *tp = FUNC3(sk);
	long m = mrtt; /* RTT */

	/*	The following amusing code comes from Jacobson's
	 *	article in SIGCOMM '88.  Note that rtt and mdev
	 *	are scaled versions of rtt and mean deviation.
	 *	This is designed to be as fast as possible
	 *	m stands for "measurement".
	 *
	 *	On a 1990 paper the rto value is changed to:
	 *	RTO = rtt + 4 * mdev
	 *
	 * Funny. This algorithm seems to be very broken.
	 * These formulae increase RTO, when it should be decreased, increase
	 * too slowly, when it should be increased quickly, decrease too quickly
	 * etc. I guess in BSD RTO takes ONE value, so that it is absolutely
	 * does not matter how to _calculate_ it. Seems, it was trap
	 * that VJ failed to avoid. 8)
	 */
	if (m == 0)
		m = 1;
	if (tp->srtt != 0) {
		m -= (tp->srtt >> 3);	/* m is now error in rtt est */
		tp->srtt += m;		/* rtt = 7/8 rtt + 1/8 new */
		if (m < 0) {
			m = -m;		/* m is now abs(error) */
			m -= (tp->mdev >> 2);   /* similar update on mdev */
			/* This is similar to one of Eifel findings.
			 * Eifel blocks mdev updates when rtt decreases.
			 * This solution is a bit different: we use finer gain
			 * for mdev in this case (alpha*beta).
			 * Like Eifel it also prevents growth of rto,
			 * but also it limits too fast rto decreases,
			 * happening in pure Eifel.
			 */
			if (m > 0)
				m >>= 3;
		} else {
			m -= (tp->mdev >> 2);   /* similar update on mdev */
		}
		tp->mdev += m;	    	/* mdev = 3/4 mdev + 1/4 new */
		if (tp->mdev > tp->mdev_max) {
			tp->mdev_max = tp->mdev;
			if (tp->mdev_max > tp->rttvar)
				tp->rttvar = tp->mdev_max;
		}
		if (FUNC0(tp->snd_una, tp->rtt_seq)) {
			if (tp->mdev_max < tp->rttvar)
				tp->rttvar -= (tp->rttvar - tp->mdev_max) >> 2;
			tp->rtt_seq = tp->snd_nxt;
			tp->mdev_max = FUNC2(sk);
		}
	} else {
		/* no previous measure. */
		tp->srtt = m << 3;	/* take the measured time to be rtt */
		tp->mdev = m << 1;	/* make sure rto = 3*rtt */
		tp->mdev_max = tp->rttvar = FUNC1(tp->mdev, FUNC2(sk));
		tp->rtt_seq = tp->snd_nxt;
	}
}