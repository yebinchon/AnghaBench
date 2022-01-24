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
struct sock {scalar_t__ sk_state; int sk_shutdown; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; int /*<<< orphan*/  sk_sleep; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONFIG ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECT2 ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 scalar_t__ BT_LISTEN ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDHUP ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRBAND ; 
 unsigned int POLLWRNORM ; 
 int RCV_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 unsigned int FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sock*) ; 

unsigned int FUNC6(struct file * file, struct socket *sock, poll_table *wait)
{
	struct sock *sk = sock->sk;
	unsigned int mask = 0;

	FUNC0("sock %p, sk %p", sock, sk);

	FUNC2(file, sk->sk_sleep, wait);

	if (sk->sk_state == BT_LISTEN)
		return FUNC1(sk);

	if (sk->sk_err || !FUNC4(&sk->sk_error_queue))
		mask |= POLLERR;

	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= POLLRDHUP;

	if (sk->sk_shutdown == SHUTDOWN_MASK)
		mask |= POLLHUP;

	if (!FUNC4(&sk->sk_receive_queue) ||
			(sk->sk_shutdown & RCV_SHUTDOWN))
		mask |= POLLIN | POLLRDNORM;

	if (sk->sk_state == BT_CLOSED)
		mask |= POLLHUP;

	if (sk->sk_state == BT_CONNECT ||
			sk->sk_state == BT_CONNECT2 ||
			sk->sk_state == BT_CONFIG)
		return mask;

	if (FUNC5(sk))
		mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
	else
		FUNC3(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

	return mask;
}