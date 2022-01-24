#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct sock {int sk_shutdown; TYPE_2__* sk_socket; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; int /*<<< orphan*/  sk_sleep; } ;
struct sctp_sock {TYPE_1__* ep; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  asocs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int /*<<< orphan*/  LISTENING ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDHUP ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int RCV_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sctp_sock* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

unsigned int FUNC8(struct file *file, struct socket *sock, poll_table *wait)
{
	struct sock *sk = sock->sk;
	struct sctp_sock *sp = FUNC2(sk);
	unsigned int mask;

	FUNC1(file, sk->sk_sleep, wait);

	/* A TCP-style listening socket becomes readable when the accept queue
	 * is not empty.
	 */
	if (FUNC4(sk, TCP) && FUNC3(sk, LISTENING))
		return (!FUNC0(&sp->ep->asocs)) ?
			(POLLIN | POLLRDNORM) : 0;

	mask = 0;

	/* Is there any exceptional events?  */
	if (sk->sk_err || !FUNC7(&sk->sk_error_queue))
		mask |= POLLERR;
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= POLLRDHUP;
	if (sk->sk_shutdown == SHUTDOWN_MASK)
		mask |= POLLHUP;

	/* Is it readable?  Reconsider this code with TCP-style support.  */
	if (!FUNC7(&sk->sk_receive_queue) ||
	    (sk->sk_shutdown & RCV_SHUTDOWN))
		mask |= POLLIN | POLLRDNORM;

	/* The association is either gone or not ready.  */
	if (!FUNC4(sk, UDP) && FUNC3(sk, CLOSED))
		return mask;

	/* Is it writable?  */
	if (FUNC5(sk)) {
		mask |= POLLOUT | POLLWRNORM;
	} else {
		FUNC6(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);
		/*
		 * Since the socket is not locked, the buffer
		 * might be made available after the writeable check and
		 * before the bit is set.  This could cause a lost I/O
		 * signal.  tcp_poll() has a race breaker for this race
		 * condition.  Based on their implementation, we put
		 * in the following code to cover it as well.
		 */
		if (FUNC5(sk))
			mask |= POLLOUT | POLLWRNORM;
	}
	return mask;
}