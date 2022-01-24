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
struct tcp_sock {scalar_t__ window_clamp; unsigned int advmss; void* rcv_ssthresh; } ;
struct sock {scalar_t__ sk_rcvbuf; int sk_userlocks; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct TYPE_2__ {scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 int SOCK_RCVBUF_LOCK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 void* FUNC2 (scalar_t__,unsigned int) ; 
 scalar_t__* sysctl_tcp_mem ; 
 scalar_t__* sysctl_tcp_rmem ; 
 int /*<<< orphan*/  tcp_memory_allocated ; 
 int /*<<< orphan*/  tcp_memory_pressure ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct tcp_sock *tp = FUNC3(sk);
	struct inet_connection_sock *icsk = FUNC1(sk);

	icsk->icsk_ack.quick = 0;

	if (sk->sk_rcvbuf < sysctl_tcp_rmem[2] &&
	    !(sk->sk_userlocks & SOCK_RCVBUF_LOCK) &&
	    !tcp_memory_pressure &&
	    FUNC0(&tcp_memory_allocated) < sysctl_tcp_mem[0]) {
		sk->sk_rcvbuf = FUNC2(FUNC0(&sk->sk_rmem_alloc),
				    sysctl_tcp_rmem[2]);
	}
	if (FUNC0(&sk->sk_rmem_alloc) > sk->sk_rcvbuf)
		tp->rcv_ssthresh = FUNC2(tp->window_clamp, 2U * tp->advmss);
}