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
struct sock {int sk_shutdown; scalar_t__ sk_type; scalar_t__ sk_state; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_error_queue; scalar_t__ sk_err; int /*<<< orphan*/ * sk_sleep; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_4__ {int /*<<< orphan*/  peer_wait; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
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
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_SYN_SENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct sock* FUNC4 (struct sock*) ; 
 struct sock* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 TYPE_2__* FUNC7 (struct sock*) ; 
 unsigned int FUNC8 (struct sock*) ; 

__attribute__((used)) static unsigned int FUNC9(struct file *file, struct socket *sock,
				    poll_table *wait)
{
	struct sock *sk = sock->sk, *other;
	unsigned int mask, writable;

	FUNC2(file, sk->sk_sleep, wait);
	mask = 0;

	/* exceptional events? */
	if (sk->sk_err || !FUNC1(&sk->sk_error_queue))
		mask |= POLLERR;
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= POLLRDHUP;
	if (sk->sk_shutdown == SHUTDOWN_MASK)
		mask |= POLLHUP;

	/* readable? */
	if (!FUNC1(&sk->sk_receive_queue) ||
	    (sk->sk_shutdown & RCV_SHUTDOWN))
		mask |= POLLIN | POLLRDNORM;

	/* Connection-based need to check for termination and startup */
	if (sk->sk_type == SOCK_SEQPACKET) {
		if (sk->sk_state == TCP_CLOSE)
			mask |= POLLHUP;
		/* connection hasn't started yet? */
		if (sk->sk_state == TCP_SYN_SENT)
			return mask;
	}

	/* writable? */
	writable = FUNC8(sk);
	if (writable) {
		other = FUNC5(sk);
		if (other) {
			if (FUNC4(other) != sk) {
				FUNC2(file, &FUNC7(other)->peer_wait,
					  wait);
				if (FUNC6(other))
					writable = 0;
			}

			FUNC3(other);
		}
	}

	if (writable)
		mask |= POLLOUT | POLLWRNORM | POLLWRBAND;
	else
		FUNC0(SOCK_ASYNC_NOSPACE, &sk->sk_socket->flags);

	return mask;
}