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
struct TYPE_2__ {int /*<<< orphan*/  space; } ;
struct tcp_sock {int window_clamp; int advmss; int /*<<< orphan*/  snd_cwnd_stamp; int /*<<< orphan*/  rcv_ssthresh; int /*<<< orphan*/  rcv_wnd; TYPE_1__ rcvq_space; } ;
struct sock {int sk_userlocks; } ;

/* Variables and functions */
 int SOCK_RCVBUF_LOCK ; 
 int SOCK_SNDBUF_LOCK ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int sysctl_tcp_app_win ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  tcp_time_stamp ; 

__attribute__((used)) static void FUNC6(struct sock *sk)
{
	struct tcp_sock *tp = FUNC5(sk);
	int maxwin;

	if (!(sk->sk_userlocks & SOCK_RCVBUF_LOCK))
		FUNC2(sk);
	if (!(sk->sk_userlocks & SOCK_SNDBUF_LOCK))
		FUNC3(sk);

	tp->rcvq_space.space = tp->rcv_wnd;

	maxwin = FUNC4(sk);

	if (tp->window_clamp >= maxwin) {
		tp->window_clamp = maxwin;

		if (sysctl_tcp_app_win && maxwin > 4 * tp->advmss)
			tp->window_clamp = FUNC0(maxwin -
					       (maxwin >> sysctl_tcp_app_win),
					       4 * tp->advmss);
	}

	/* Force reservation of one segment. */
	if (sysctl_tcp_app_win &&
	    tp->window_clamp > 2 * tp->advmss &&
	    tp->window_clamp + tp->advmss > maxwin)
		tp->window_clamp = FUNC0(2 * tp->advmss, maxwin - tp->advmss);

	tp->rcv_ssthresh = FUNC1(tp->rcv_ssthresh, tp->window_clamp);
	tp->snd_cwnd_stamp = tcp_time_stamp;
}