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
struct socket {scalar_t__ fasync_list; } ;
struct sock {int sk_shutdown; int /*<<< orphan*/ * sk_sleep; struct socket* sk_socket; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int /*<<< orphan*/  wait; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_OUT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_WAKE_SPACE ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sctp_association *asoc)
{
	struct sock *sk = asoc->base.sk;
	struct socket *sock = sk->sk_socket;

	if ((FUNC1(asoc) > 0) && sock) {
		if (FUNC3(&asoc->wait))
			FUNC4(&asoc->wait);

		if (FUNC0(sk)) {
			if (sk->sk_sleep && FUNC3(sk->sk_sleep))
				FUNC4(sk->sk_sleep);

			/* Note that we try to include the Async I/O support
			 * here by modeling from the current TCP/UDP code.
			 * We have not tested with it yet.
			 */
			if (sock->fasync_list &&
			    !(sk->sk_shutdown & SEND_SHUTDOWN))
				FUNC2(sock,
						SOCK_WAKE_SPACE, POLL_OUT);
		}
	}
}