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
struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_accept_queue; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int O_NONBLOCK ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC6 (int /*<<< orphan*/ *,struct sock*) ; 
 long FUNC7 (struct sock*,int) ; 

struct sock *FUNC8(struct sock *sk, int flags, int *err)
{
	struct inet_connection_sock *icsk = FUNC1(sk);
	struct sock *newsk;
	int error;

	FUNC3(sk);

	/* We need to make sure that this socket is listening,
	 * and that it has something pending.
	 */
	error = -EINVAL;
	if (sk->sk_state != TCP_LISTEN)
		goto out_err;

	/* Find already established connection */
	if (FUNC5(&icsk->icsk_accept_queue)) {
		long timeo = FUNC7(sk, flags & O_NONBLOCK);

		/* If this is a non blocking socket don't sleep */
		error = -EAGAIN;
		if (!timeo)
			goto out_err;

		error = FUNC2(sk, timeo);
		if (error)
			goto out_err;
	}

	newsk = FUNC6(&icsk->icsk_accept_queue, sk);
	FUNC0(newsk->sk_state == TCP_SYN_RECV);
out:
	FUNC4(sk);
	return newsk;
out_err:
	newsk = NULL;
	*err = error;
	goto out;
}