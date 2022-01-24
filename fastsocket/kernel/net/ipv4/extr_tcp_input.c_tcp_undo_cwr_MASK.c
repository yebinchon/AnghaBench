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
struct tcp_sock {int prior_ssthresh; int snd_ssthresh; int /*<<< orphan*/  snd_cwnd_stamp; void* snd_cwnd; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_2__ {void* (* undo_cwnd ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_sock*) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 void* FUNC2 (void*,int) ; 
 void* FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 

__attribute__((used)) static void FUNC5(struct sock *sk, const bool undo_ssthresh)
{
	struct tcp_sock *tp = FUNC4(sk);

	if (tp->prior_ssthresh) {
		const struct inet_connection_sock *icsk = FUNC1(sk);

		if (icsk->icsk_ca_ops->undo_cwnd)
			tp->snd_cwnd = icsk->icsk_ca_ops->undo_cwnd(sk);
		else
			tp->snd_cwnd = FUNC2(tp->snd_cwnd, tp->snd_ssthresh << 1);

		if (undo_ssthresh && tp->prior_ssthresh > tp->snd_ssthresh) {
			tp->snd_ssthresh = tp->prior_ssthresh;
			FUNC0(tp);
		}
	} else {
		tp->snd_cwnd = FUNC2(tp->snd_cwnd, tp->snd_ssthresh);
	}
	tp->snd_cwnd_stamp = tcp_time_stamp;
}