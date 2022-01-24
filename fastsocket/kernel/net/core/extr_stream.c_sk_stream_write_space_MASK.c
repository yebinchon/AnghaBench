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
struct socket {scalar_t__ fasync_list; int /*<<< orphan*/  flags; } ;
struct sock {int sk_shutdown; scalar_t__ sk_sleep; struct socket* sk_socket; } ;

/* Variables and functions */
 int POLLOUT ; 
 int POLLWRBAND ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

void FUNC6(struct sock *sk)
{
	struct socket *sock = sk->sk_socket;

	if (FUNC2(sk) >= FUNC1(sk) && sock) {
		FUNC0(SOCK_NOSPACE, &sock->flags);

		if (sk->sk_sleep && FUNC4(sk->sk_sleep))
			FUNC5(sk->sk_sleep, POLLOUT |
						POLLWRNORM | POLLWRBAND);
		if (sock->fasync_list && !(sk->sk_shutdown & SEND_SHUTDOWN))
			FUNC3(sock, SOCK_WAKE_SPACE, POLL_OUT);
	}
}