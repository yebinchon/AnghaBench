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
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ DN_O ; 
 TYPE_1__* FUNC0 (struct sock*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	int err = -EINVAL;

	FUNC2(sk);

	if (FUNC4(sk, SOCK_ZAPPED))
		goto out;

	if ((FUNC0(sk)->state != DN_O) || (sk->sk_state == TCP_LISTEN))
		goto out;

	sk->sk_max_ack_backlog = backlog;
	sk->sk_ack_backlog     = 0;
	sk->sk_state           = TCP_LISTEN;
	err                 = 0;
	FUNC1(sk);

out:
	FUNC3(sk);

	return err;
}