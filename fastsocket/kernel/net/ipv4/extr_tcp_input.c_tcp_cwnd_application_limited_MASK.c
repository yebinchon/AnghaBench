#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tcp_sock {int snd_cwnd; int /*<<< orphan*/  snd_cwnd_stamp; scalar_t__ snd_cwnd_used; int /*<<< orphan*/  snd_ssthresh; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 scalar_t__ TCP_CA_Open ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct sock *sk)
{
	struct tcp_sock *tp = FUNC5(sk);

	if (FUNC1(sk)->icsk_ca_state == TCP_CA_Open &&
	    sk->sk_socket && !FUNC6(SOCK_NOSPACE, &sk->sk_socket->flags)) {
		/* Limited by application or receiver window. */
		u32 init_win = FUNC4(tp, FUNC0(sk));
		u32 win_used = FUNC2(tp->snd_cwnd_used, init_win);
		if (win_used < tp->snd_cwnd) {
			tp->snd_ssthresh = FUNC3(sk);
			tp->snd_cwnd = (tp->snd_cwnd + win_used) >> 1;
		}
		tp->snd_cwnd_used = 0;
	}
	tp->snd_cwnd_stamp = tcp_time_stamp;
}