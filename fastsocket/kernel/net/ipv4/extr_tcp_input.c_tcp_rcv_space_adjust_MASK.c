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
struct TYPE_4__ {void* time; int seq; int space; } ;
struct TYPE_3__ {int rtt; } ;
struct tcp_sock {int copied_seq; int advmss; int window_clamp; TYPE_2__ rcvq_space; TYPE_1__ rcv_rtt_est; } ;
struct sock {int sk_userlocks; int sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int MAX_TCP_HEADER ; 
 int SOCK_RCVBUF_LOCK ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_tcp_moderate_rcvbuf ; 
 int /*<<< orphan*/ * sysctl_tcp_rmem ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 
 void* tcp_time_stamp ; 
 int FUNC3 (int) ; 

void FUNC4(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);
	int time;
	int space;

	if (tp->rcvq_space.time == 0)
		goto new_measure;

	time = tcp_time_stamp - tp->rcvq_space.time;
	if (time < (tp->rcv_rtt_est.rtt >> 3) || tp->rcv_rtt_est.rtt == 0)
		return;

	space = 2 * (tp->copied_seq - tp->rcvq_space.seq);

	space = FUNC0(tp->rcvq_space.space, space);

	if (tp->rcvq_space.space != space) {
		int rcvmem;

		tp->rcvq_space.space = space;

		if (sysctl_tcp_moderate_rcvbuf &&
		    !(sk->sk_userlocks & SOCK_RCVBUF_LOCK)) {
			int new_clamp = space;

			/* Receive space grows, normalize in order to
			 * take into account packet headers and sk_buff
			 * structure overhead.
			 */
			space /= tp->advmss;
			if (!space)
				space = 1;
			rcvmem = (tp->advmss + MAX_TCP_HEADER +
				  16 + sizeof(struct sk_buff));
			while (FUNC3(rcvmem) < tp->advmss)
				rcvmem += 128;
			space *= rcvmem;
			space = FUNC1(space, sysctl_tcp_rmem[2]);
			if (space > sk->sk_rcvbuf) {
				sk->sk_rcvbuf = space;

				/* Make the window clamp follow along.  */
				tp->window_clamp = new_clamp;
			}
		}
	}

new_measure:
	tp->rcvq_space.seq = tp->copied_seq;
	tp->rcvq_space.time = tcp_time_stamp;
}