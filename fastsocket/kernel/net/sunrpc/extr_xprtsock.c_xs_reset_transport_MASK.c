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
struct socket {int dummy; } ;
struct sock_xprt {struct socket* sock; struct sock* inet; scalar_t__ srcport; } ;
struct sock {scalar_t__ sk_no_check; int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/ * sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock_xprt*,struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock_xprt *transport)
{
	struct socket *sock = transport->sock;
	struct sock *sk = transport->inet;

	if (sk == NULL)
		return;

	transport->srcport = 0;

	FUNC1(&sk->sk_callback_lock);
	transport->inet = NULL;
	transport->sock = NULL;

	sk->sk_user_data = NULL;

	FUNC3(transport, sk);
	FUNC2(&sk->sk_callback_lock);

	sk->sk_no_check = 0;

	FUNC0(sock);
}