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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; int bytes_acked; int mss_cache; int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ sysctl_tcp_abc ; 
 int /*<<< orphan*/  FUNC0 (struct tcp_sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcp_sock*) ; 

void FUNC4(struct sock *sk, u32 ack, u32 in_flight)
{
	struct tcp_sock *tp = FUNC2(sk);

	if (!FUNC1(sk, in_flight))
		return;

	/* In "safe" area, increase. */
	if (tp->snd_cwnd <= tp->snd_ssthresh)
		FUNC3(tp);

	/* In dangerous area, increase slowly. */
	else if (sysctl_tcp_abc) {
		/* RFC3465: Appropriate Byte Count
		 * increase once for each full cwnd acked
		 */
		if (tp->bytes_acked >= tp->snd_cwnd*tp->mss_cache) {
			tp->bytes_acked -= tp->snd_cwnd*tp->mss_cache;
			if (tp->snd_cwnd < tp->snd_cwnd_clamp)
				tp->snd_cwnd++;
		}
	} else {
		FUNC0(tp, tp->snd_cwnd);
	}
}