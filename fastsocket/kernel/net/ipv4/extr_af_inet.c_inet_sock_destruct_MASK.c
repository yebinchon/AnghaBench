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
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int /*<<< orphan*/ * sk_rcv_dst; int /*<<< orphan*/ * sk_dst_cache; int /*<<< orphan*/  sk_forward_alloc; int /*<<< orphan*/  sk_wmem_queued; int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_error_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct inet_sock {int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct sock*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC11(struct sock *sk)
{
	struct inet_sock *inet = FUNC4(sk);

	FUNC1(&sk->sk_receive_queue);
	FUNC1(&sk->sk_error_queue);

	FUNC8(sk);

	if (sk->sk_type == SOCK_STREAM && sk->sk_state != TCP_CLOSE) {
		FUNC6("Attempt to release TCP socket in state %d %p\n",
		       sk->sk_state, sk);
		return;
	}
	if (!FUNC10(sk, SOCK_DEAD)) {
		FUNC6("Attempt to release alive inet socket %p\n", sk);
		return;
	}

	FUNC0(FUNC2(&sk->sk_rmem_alloc));
	FUNC0(FUNC2(&sk->sk_wmem_alloc));
	FUNC0(sk->sk_wmem_queued);
	FUNC0(sk->sk_forward_alloc);

	FUNC5(FUNC7(inet->opt));
	FUNC3(sk->sk_dst_cache);
	if (sk->sk_rcv_dst) {
		//FPRINTK("Release dst 0x%p[%u] on socket 0x%p\n", sk->sk_rcv_dst, atomic_read(&sk->sk_rcv_dst->__refcnt), sk);
		FUNC3(sk->sk_rcv_dst);
		sk->sk_rcv_dst = NULL;
	}
	FUNC9(sk);
}