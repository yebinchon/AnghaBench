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
struct socket {int /*<<< orphan*/  flags; } ;
struct sock {struct socket* sk_socket; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 struct rpc_xprt* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_xprt*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct socket *sock;
	struct rpc_xprt *xprt;

	if (FUNC2(!(sock = sk->sk_socket)))
		return;
	FUNC0(SOCK_NOSPACE, &sock->flags);

	if (FUNC2(!(xprt = FUNC3(sk))))
		return;
	if (FUNC1(SOCK_ASYNC_NOSPACE, &sock->flags) == 0)
		return;

	FUNC4(xprt);
}