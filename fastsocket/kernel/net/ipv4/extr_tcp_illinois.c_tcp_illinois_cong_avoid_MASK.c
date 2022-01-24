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
typedef  int u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_ssthresh; int snd_cwnd_cnt; scalar_t__ snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct illinois {int acked; int alpha; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int ALPHA_SHIFT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct illinois* FUNC1 (struct sock*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, u32 ack, u32 in_flight)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct illinois *ca = FUNC1(sk);

	if (FUNC0(ack, ca->end_seq))
		FUNC6(sk);

	/* RFC2861 only increase cwnd if fully utilized */
	if (!FUNC3(sk, in_flight))
		return;

	/* In slow start */
	if (tp->snd_cwnd <= tp->snd_ssthresh)
		FUNC5(tp);

	else {
		u32 delta;

		/* snd_cwnd_cnt is # of packets since last cwnd increment */
		tp->snd_cwnd_cnt += ca->acked;
		ca->acked = 1;

		/* This is close approximation of:
		 * tp->snd_cwnd += alpha/tp->snd_cwnd
		*/
		delta = (tp->snd_cwnd_cnt * ca->alpha) >> ALPHA_SHIFT;
		if (delta >= tp->snd_cwnd) {
			tp->snd_cwnd = FUNC2(tp->snd_cwnd + delta / tp->snd_cwnd,
					   (u32) tp->snd_cwnd_clamp);
			tp->snd_cwnd_cnt = 0;
		}
	}
}