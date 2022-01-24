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
struct sock {void (* sk_user_data ) (struct sock*,int) ;void (* sk_data_ready ) (struct sock*,int) ;scalar_t__ sk_state; int /*<<< orphan*/  sk_callback_lock; } ;

/* Variables and functions */
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_tcp_listen_work ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC1 (char*,struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sock *sk, int bytes)
{
	void (*ready)(struct sock *sk, int bytes);

	FUNC1("listen data ready sk %p\n", sk);

	FUNC2(&sk->sk_callback_lock);
	ready = sk->sk_user_data;
	if (!ready) { /* check for teardown race */
		ready = sk->sk_data_ready;
		goto out;
	}

	/*
	 * ->sk_data_ready is also called for a newly established child socket
	 * before it has been accepted and the accepter has set up their
	 * data_ready.. we only want to queue listen work for our listening
	 * socket
	 */
	if (sk->sk_state == TCP_LISTEN)
		FUNC0(rds_wq, &rds_tcp_listen_work);

out:
	FUNC3(&sk->sk_callback_lock);
	ready(sk, bytes);
}