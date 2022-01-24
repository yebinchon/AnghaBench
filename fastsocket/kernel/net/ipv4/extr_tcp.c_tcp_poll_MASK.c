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
struct tcp_sock {scalar_t__ urg_seq; scalar_t__ copied_seq; int urg_data; int rcv_nxt; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_state; int sk_shutdown; scalar_t__ sk_err; TYPE_1__* sk_socket; int /*<<< orphan*/  sk_sleep; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLPRI ; 
 unsigned int POLLRDHUP ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int SHUTDOWN_MASK ; 
 int /*<<< orphan*/  SOCK_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  SOCK_URGINLINE ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 int TCP_CLOSE ; 
 int TCP_LISTEN ; 
 int TCP_URG_VALID ; 
 unsigned int FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 

unsigned int FUNC10(struct file *file, struct socket *sock, poll_table *wait)
{
	unsigned int mask;
	struct sock *sk = sock->sk;
	struct tcp_sock *tp = FUNC9(sk);

	FUNC1(sk);

	FUNC7(file, sk->sk_sleep, wait);
	if (sk->sk_state == TCP_LISTEN)
		return FUNC0(sk);

	/* Socket is not locked. We are protected from async events
	 * by poll logic and correct handling of state changes
	 * made by other threads is impossible in any case.
	 */

	mask = 0;

	/*
	 * POLLHUP is certainly not done right. But poll() doesn't
	 * have a notion of HUP in just one direction, and for a
	 * socket the read side is more interesting.
	 *
	 * Some poll() documentation says that POLLHUP is incompatible
	 * with the POLLOUT/POLLWR flags, so somebody should check this
	 * all. But careful, it tends to be safer to return too many
	 * bits than too few, and you can easily break real applications
	 * if you don't tell them that something has hung up!
	 *
	 * Check-me.
	 *
	 * Check number 1. POLLHUP is _UNMASKABLE_ event (see UNIX98 and
	 * our fs/select.c). It means that after we received EOF,
	 * poll always returns immediately, making impossible poll() on write()
	 * in state CLOSE_WAIT. One solution is evident --- to set POLLHUP
	 * if and only if shutdown has been made in both directions.
	 * Actually, it is interesting to look how Solaris and DUX
	 * solve this dilemma. I would prefer, if POLLHUP were maskable,
	 * then we could set it on SND_SHUTDOWN. BTW examples given
	 * in Stevens' books assume exactly this behaviour, it explains
	 * why POLLHUP is incompatible with POLLOUT.	--ANK
	 *
	 * NOTE. Check for TCP_CLOSE is added. The goal is to prevent
	 * blocking on fresh not-connected or disconnected socket. --ANK
	 */
	if (sk->sk_shutdown == SHUTDOWN_MASK || sk->sk_state == TCP_CLOSE)
		mask |= POLLHUP;
	if (sk->sk_shutdown & RCV_SHUTDOWN)
		mask |= POLLIN | POLLRDNORM | POLLRDHUP;

	/* Connected? */
	if ((1 << sk->sk_state) & ~(TCPF_SYN_SENT | TCPF_SYN_RECV)) {
		int target = FUNC8(sk, 0, INT_MAX);

		if (tp->urg_seq == tp->copied_seq &&
		    !FUNC6(sk, SOCK_URGINLINE) &&
		    tp->urg_data)
			target++;

		/* Potential race condition. If read of tp below will
		 * escape above sk->sk_state, we can be illegally awaken
		 * in SYN_* states. */
		if (tp->rcv_nxt - tp->copied_seq >= target)
			mask |= POLLIN | POLLRDNORM;

		if (!(sk->sk_shutdown & SEND_SHUTDOWN)) {
			if (FUNC4(sk) >= FUNC3(sk)) {
				mask |= POLLOUT | POLLWRNORM;
			} else {  /* send SIGIO later */
				FUNC2(SOCK_ASYNC_NOSPACE,
					&sk->sk_socket->flags);
				FUNC2(SOCK_NOSPACE, &sk->sk_socket->flags);

				/* Race breaker. If space is freed after
				 * wspace test but before the flags are set,
				 * IO signal will be lost.
				 */
				if (FUNC4(sk) >= FUNC3(sk))
					mask |= POLLOUT | POLLWRNORM;
			}
		}

		if (tp->urg_data & TCP_URG_VALID)
			mask |= POLLPRI;
	}
	/* This barrier is coupled with smp_wmb() in tcp_reset() */
	FUNC5();
	if (sk->sk_err)
		mask |= POLLERR;

	return mask;
}