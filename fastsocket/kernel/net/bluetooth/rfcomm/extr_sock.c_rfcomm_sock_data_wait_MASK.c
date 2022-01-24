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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC12(struct sock *sk, long timeo)
{
	FUNC0(wait, current);

	FUNC2(sk->sk_sleep, &wait);
	for (;;) {
		FUNC9(TASK_INTERRUPTIBLE);

		if (!FUNC11(&sk->sk_receive_queue) ||
		    sk->sk_err ||
		    (sk->sk_shutdown & RCV_SHUTDOWN) ||
		    FUNC10(current) ||
		    !timeo)
			break;

		FUNC8(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
		FUNC5(sk);
		timeo = FUNC7(timeo);
		FUNC4(sk);
		FUNC3(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
	}

	FUNC1(TASK_RUNNING);
	FUNC6(sk->sk_sleep, &wait);
	return timeo;
}