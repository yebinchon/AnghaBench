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
struct tcp_sock {unsigned int advmss; scalar_t__ pred_flags; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  copied_seq; int /*<<< orphan*/  rcv_ssthresh; } ;
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  sk_receive_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_PRUNECALLED ; 
 int /*<<< orphan*/  LINUX_MIB_RCVPRUNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ tcp_memory_pressure ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 struct tcp_sock* FUNC12 (struct sock*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk)
{
	struct tcp_sock *tp = FUNC12(sk);

	FUNC1(sk, "prune_queue: c=%x\n", tp->copied_seq);

	FUNC0(FUNC7(sk), LINUX_MIB_PRUNECALLED);

	if (FUNC2(&sk->sk_rmem_alloc) >= sk->sk_rcvbuf)
		FUNC8(sk);
	else if (tcp_memory_pressure)
		tp->rcv_ssthresh = FUNC3(tp->rcv_ssthresh, 4U * tp->advmss);

	FUNC10(sk);
	if (!FUNC6(&sk->sk_receive_queue))
		FUNC9(sk, &sk->sk_receive_queue,
			     FUNC5(&sk->sk_receive_queue),
			     NULL,
			     tp->copied_seq, tp->rcv_nxt);
	FUNC4(sk);

	if (FUNC2(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf)
		return 0;

	/* Collapsing did not help, destructive actions follow.
	 * This must not ever occur. */

	FUNC11(sk);

	if (FUNC2(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf)
		return 0;

	/* If we are really being abused, tell the caller to silently
	 * drop receive data on the floor.  It will get retransmitted
	 * and hopefully then we'll have sufficient space.
	 */
	FUNC0(FUNC7(sk), LINUX_MIB_RCVPRUNED);

	/* Massive buffer overcommit. */
	tp->pred_flags = 0;
	return -1;
}