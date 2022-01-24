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
struct TYPE_3__ {int /*<<< orphan*/  prequeue; } ;
struct tcp_sock {TYPE_1__ ucopy; int /*<<< orphan*/ * md5sig_info; int /*<<< orphan*/  out_of_order_queue; } ;
struct sock {int /*<<< orphan*/ * sk_sndmsg_page; int /*<<< orphan*/  sk_async_wait_queue; } ;
struct TYPE_4__ {scalar_t__ icsk_bind_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  tcp_sockets_allocated ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

void FUNC11(struct sock *sk)
{
	struct tcp_sock *tp = FUNC8(sk);

	FUNC7(sk);

	FUNC6(sk);

	/* Cleanup up the write buffer. */
	FUNC10(sk);

	/* Cleans up our, hopefully empty, out_of_order_queue. */
	FUNC1(&tp->out_of_order_queue);

#ifdef CONFIG_TCP_MD5SIG
	/* Clean up the MD5 key list, if any */
	if (tp->md5sig_info) {
		tcp_v4_clear_md5_list(sk);
		kfree(tp->md5sig_info);
		tp->md5sig_info = NULL;
	}
#endif

#ifdef CONFIG_NET_DMA
	/* Cleans up our sk_async_wait_queue */
	__skb_queue_purge(&sk->sk_async_wait_queue);
#endif

	/* Clean prequeue, it must be empty really */
	FUNC1(&tp->ucopy.prequeue);

	/* Clean up a referenced TCP bind bucket. */
	if (FUNC2(sk)->icsk_bind_hash)
		FUNC3(sk);

	/*
	 * If sendmsg cached page exists, toss it.
	 */
	if (sk->sk_sndmsg_page) {
		FUNC0(sk->sk_sndmsg_page);
		sk->sk_sndmsg_page = NULL;
	}

	FUNC5(&tcp_sockets_allocated);
}