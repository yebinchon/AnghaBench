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
struct tcp_sock {int snd_cwnd_cnt; scalar_t__ snd_cwnd; int /*<<< orphan*/  snd_cwnd_stamp; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FLAG_ANY_PROGRESS ; 
 int FLAG_DSACKING_ACK ; 
 int FLAG_NOT_DUP ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 

__attribute__((used)) static void FUNC5(struct sock *sk, int flag)
{
	struct tcp_sock *tp = FUNC4(sk);
	int decr = tp->snd_cwnd_cnt + 1;

	if ((flag & (FLAG_ANY_PROGRESS | FLAG_DSACKING_ACK)) ||
	    (FUNC2(tp) && !(flag & FLAG_NOT_DUP))) {
		tp->snd_cwnd_cnt = decr & 1;
		decr >>= 1;

		if (decr && tp->snd_cwnd > FUNC1(sk))
			tp->snd_cwnd -= decr;

		tp->snd_cwnd = FUNC0(tp->snd_cwnd, FUNC3(tp) + 1);
		tp->snd_cwnd_stamp = tcp_time_stamp;
	}
}