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
struct sock {scalar_t__ sk_sndbuf; int sk_shutdown; int /*<<< orphan*/  sk_sleep; scalar_t__ sk_err; int /*<<< orphan*/  sk_wmem_alloc; TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static long FUNC8(struct sock *sk, long timeo)
{
	FUNC0(wait);

	FUNC2(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
	for (;;) {
		if (!timeo)
			break;
		if (FUNC7(current))
			break;
		FUNC6(SOCK_NOSPACE, &sk->sk_socket->flags);
		FUNC4(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
		if (FUNC1(&sk->sk_wmem_alloc) < sk->sk_sndbuf)
			break;
		if (sk->sk_shutdown & SEND_SHUTDOWN)
			break;
		if (sk->sk_err)
			break;
		timeo = FUNC5(timeo);
	}
	FUNC3(sk->sk_sleep, &wait);
	return timeo;
}