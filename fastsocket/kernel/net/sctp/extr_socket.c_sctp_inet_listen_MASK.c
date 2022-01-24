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
struct socket {scalar_t__ state; struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; scalar_t__ sk_reuse; int /*<<< orphan*/  sk_state; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bind_hash; struct sctp_endpoint* ep; } ;
struct TYPE_3__ {int fastreuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int EINVAL ; 
 int /*<<< orphan*/  LISTENING ; 
 int /*<<< orphan*/  SCTP_SS_CLOSED ; 
 scalar_t__ SS_UNCONNECTED ; 
 int /*<<< orphan*/  UDP_HIGH_BANDWIDTH ; 
 int FUNC0 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	struct sctp_endpoint *ep = FUNC3(sk)->ep;
	int err = -EINVAL;

	if (FUNC7(backlog < 0))
		return err;

	FUNC1(sk);

	/* Peeled-off sockets are not allowed to listen().  */
	if (FUNC5(sk, UDP_HIGH_BANDWIDTH))
		goto out;

	if (sock->state != SS_UNCONNECTED)
		goto out;

	/* If backlog is zero, disable listening. */
	if (!backlog) {
		if (FUNC4(sk, CLOSED))
			goto out;

		err = 0;
		FUNC6(ep);
		sk->sk_state = SCTP_SS_CLOSED;
		if (sk->sk_reuse)
			FUNC3(sk)->bind_hash->fastreuse = 1;
		goto out;
	}

	/* If we are already listening, just update the backlog */
	if (FUNC4(sk, LISTENING))
		sk->sk_max_ack_backlog = backlog;
	else {
		err = FUNC0(sk, backlog);
		if (err)
			goto out;
	}

	err = 0;
out:
	FUNC2(sk);
	return err;
}