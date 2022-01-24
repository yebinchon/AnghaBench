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
typedef  scalar_t__ u32 ;
struct tcp_sock {int /*<<< orphan*/  snd_cwnd; int /*<<< orphan*/  snd_ssthresh; } ;
struct sock {int dummy; } ;
struct bictcp {int found; scalar_t__ last_ack; scalar_t__ round_start; scalar_t__ delay_min; scalar_t__ sample_cnt; scalar_t__ curr_rtt; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int HYSTART_ACK_TRAIN ; 
 int HYSTART_DELAY ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ HYSTART_MIN_SAMPLES ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ hystart_ack_delta ; 
 int hystart_detect ; 
 struct bictcp* FUNC2 (struct sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk, u32 delay)
{
	struct tcp_sock *tp = FUNC3(sk);
	struct bictcp *ca = FUNC2(sk);

	if (!(ca->found & hystart_detect)) {
		u32 now = FUNC1();

		/* first detection parameter - ack-train detection */
		if ((s32)(now - ca->last_ack) <= hystart_ack_delta) {
			ca->last_ack = now;
			if ((s32)(now - ca->round_start) > ca->delay_min >> 4)
				ca->found |= HYSTART_ACK_TRAIN;
		}

		/* obtain the minimum delay of more than sampling packets */
		if (ca->sample_cnt < HYSTART_MIN_SAMPLES) {
			if (ca->curr_rtt == 0 || ca->curr_rtt > delay)
				ca->curr_rtt = delay;

			ca->sample_cnt++;
		} else {
			if (ca->curr_rtt > ca->delay_min +
			    FUNC0(ca->delay_min>>4))
				ca->found |= HYSTART_DELAY;
		}
		/*
		 * Either one of two conditions are met,
		 * we exit from slow start immediately.
		 */
		if (ca->found & hystart_detect)
			tp->snd_ssthresh = tp->snd_cwnd;
	}
}