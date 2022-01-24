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
struct sock {int sk_shutdown; int /*<<< orphan*/  sk_sleep; TYPE_1__* sk_socket; scalar_t__ sk_err; int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC10(struct sock *sk, long timeo)
{
	FUNC0(wait);

	FUNC8(sk);

	for (;;) {
		FUNC3(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);

		if (!FUNC7(&sk->sk_receive_queue) ||
		    sk->sk_err ||
		    (sk->sk_shutdown & RCV_SHUTDOWN) ||
		    FUNC6(current) ||
		    !timeo)
			break;

		FUNC5(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
		FUNC9(sk);
		timeo = FUNC4(timeo);
		FUNC8(sk);
		FUNC1(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
	}

	FUNC2(sk->sk_sleep, &wait);
	FUNC9(sk);
	return timeo;
}