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

/* Variables and functions */
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static void FUNC4(struct sock *sk)
{
	struct socket *sock = sk->sk_socket;

	if (FUNC2(sk) >= FUNC1(sk) && sock)
		FUNC0(SOCK_NOSPACE, &sock->flags);
	FUNC3(sk);
}