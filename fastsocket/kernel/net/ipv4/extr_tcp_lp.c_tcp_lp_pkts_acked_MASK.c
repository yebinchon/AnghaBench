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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ rcv_tsecr; } ;
struct tcp_sock {unsigned int snd_cwnd; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct lp {int inference; scalar_t__ last_drop; int flag; int sowd; int owd_min; int owd_max; int owd_max_rsv; int /*<<< orphan*/  remote_hz; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int LP_WITHIN_INF ; 
 int LP_WITHIN_THR ; 
 struct lp* FUNC0 (struct sock*) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,scalar_t__) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ tcp_time_stamp ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 num_acked, s32 rtt_us)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct lp *lp = FUNC0(sk);

	if (rtt_us > 0)
		FUNC3(sk, rtt_us);

	/* calc inference */
	if (tcp_time_stamp > tp->rx_opt.rcv_tsecr)
		lp->inference = 3 * (tcp_time_stamp - tp->rx_opt.rcv_tsecr);

	/* test if within inference */
	if (lp->last_drop && (tcp_time_stamp - lp->last_drop < lp->inference))
		lp->flag |= LP_WITHIN_INF;
	else
		lp->flag &= ~LP_WITHIN_INF;

	/* test if within threshold */
	if (lp->sowd >> 3 <
	    lp->owd_min + 15 * (lp->owd_max - lp->owd_min) / 100)
		lp->flag |= LP_WITHIN_THR;
	else
		lp->flag &= ~LP_WITHIN_THR;

	FUNC2("TCP-LP: %05o|%5u|%5u|%15u|%15u|%15u\n", lp->flag,
		 tp->snd_cwnd, lp->remote_hz, lp->owd_min, lp->owd_max,
		 lp->sowd >> 3);

	if (lp->flag & LP_WITHIN_THR)
		return;

	/* FIXME: try to reset owd_min and owd_max here
	 * so decrease the chance the min/max is no longer suitable
	 * and will usually within threshold when whithin inference */
	lp->owd_min = lp->sowd >> 3;
	lp->owd_max = lp->sowd >> 2;
	lp->owd_max_rsv = lp->sowd >> 2;

	/* happened within inference
	 * drop snd_cwnd into 1 */
	if (lp->flag & LP_WITHIN_INF)
		tp->snd_cwnd = 1U;

	/* happened after inference
	 * cut snd_cwnd into half */
	else
		tp->snd_cwnd = FUNC1(tp->snd_cwnd >> 1U, 1U);

	/* record this drop time */
	lp->last_drop = tcp_time_stamp;
}