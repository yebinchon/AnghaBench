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
struct sock {int /*<<< orphan*/  sk_sleep; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_ASYNC_WAITDATA ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sock*,long*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

int FUNC7(struct sock *sk, long *timeo)
{
	int rc;
	FUNC0(wait);

	FUNC3(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
	FUNC4(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
	rc = FUNC5(sk, timeo, !FUNC6(&sk->sk_receive_queue));
	FUNC1(SOCK_ASYNC_WAITDATA, &sk->sk_socket->flags);
	FUNC2(sk->sk_sleep, &wait);
	return rc;
}