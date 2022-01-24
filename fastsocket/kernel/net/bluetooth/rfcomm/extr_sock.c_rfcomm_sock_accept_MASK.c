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
struct socket {int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; int /*<<< orphan*/  sk_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sock*,...) ; 
 scalar_t__ BT_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBADFD ; 
 int EINVAL ; 
 int O_NONBLOCK ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sock* FUNC3 (struct sock*,struct socket*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (long) ; 
 long FUNC11 (struct sock*,int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC12(struct socket *sock, struct socket *newsock, int flags)
{
	FUNC1(wait, current);
	struct sock *sk = sock->sk, *nsk;
	long timeo;
	int err = 0;

	FUNC4(sk);

	if (sk->sk_state != BT_LISTEN) {
		err = -EBADFD;
		goto done;
	}

	if (sk->sk_type != SOCK_STREAM) {
		err = -EINVAL;
		goto done;
	}

	timeo = FUNC11(sk, flags & O_NONBLOCK);

	FUNC0("sk %p timeo %ld", sk, timeo);

	/* Wait for an incoming connection. (wake-one). */
	FUNC2(sk->sk_sleep, &wait);
	while (!(nsk = FUNC3(sk, newsock))) {
		FUNC8(TASK_INTERRUPTIBLE);
		if (!timeo) {
			err = -EAGAIN;
			break;
		}

		FUNC5(sk);
		timeo = FUNC7(timeo);
		FUNC4(sk);

		if (sk->sk_state != BT_LISTEN) {
			err = -EBADFD;
			break;
		}

		if (FUNC9(current)) {
			err = FUNC10(timeo);
			break;
		}
	}
	FUNC8(TASK_RUNNING);
	FUNC6(sk->sk_sleep, &wait);

	if (err)
		goto done;

	newsock->state = SS_CONNECTED;

	FUNC0("new socket %p", nsk);

done:
	FUNC5(sk);
	return err;
}