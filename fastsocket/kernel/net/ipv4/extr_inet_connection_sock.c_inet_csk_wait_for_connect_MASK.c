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
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_sleep; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_accept_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (long) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct sock *sk, long timeo)
{
	struct inet_connection_sock *icsk = FUNC2(sk);
	FUNC0(wait);
	int err;

	/*
	 * True wake-one mechanism for incoming connections: only
	 * one process gets woken up, not the 'whole herd'.
	 * Since we do not 'race & poll' for established sockets
	 * anymore, the common case will execute the loop only once.
	 *
	 * Subtle issue: "add_wait_queue_exclusive()" will be added
	 * after any current non-exclusive waiters, and we know that
	 * it will always _stay_ after any new non-exclusive waiters
	 * because all non-exclusive waiters are added at the
	 * beginning of the wait-queue. As such, it's ok to "drop"
	 * our exclusiveness temporarily when we get woken up without
	 * having to remove and re-insert us on the wait queue.
	 */
	for (;;) {
		FUNC4(sk->sk_sleep, &wait,
					  TASK_INTERRUPTIBLE);
		FUNC5(sk);
		if (FUNC6(&icsk->icsk_accept_queue))
			timeo = FUNC7(timeo);
		FUNC3(sk);
		err = 0;
		if (!FUNC6(&icsk->icsk_accept_queue))
			break;
		err = -EINVAL;
		if (sk->sk_state != TCP_LISTEN)
			break;
		err = FUNC9(timeo);
		if (FUNC8(current))
			break;
		err = -EAGAIN;
		if (!timeo)
			break;
	}
	FUNC1(sk->sk_sleep, &wait);
	return err;
}