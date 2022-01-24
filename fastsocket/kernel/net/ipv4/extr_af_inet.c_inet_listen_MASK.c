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
struct socket {scalar_t__ state; scalar_t__ type; struct sock* sk; } ;
struct sock {unsigned char sk_state; int sk_max_ack_backlog; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ SS_UNCONNECTED ; 
 int TCPF_CLOSE ; 
 int TCPF_LISTEN ; 
 unsigned char TCP_LISTEN ; 
 int FUNC0 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

int FUNC3(struct socket *sock, int backlog)
{
	struct sock *sk = sock->sk;
	unsigned char old_state;
	int err;

	FUNC1(sk);

	err = -EINVAL;
	if (sock->state != SS_UNCONNECTED || sock->type != SOCK_STREAM)
		goto out;

	old_state = sk->sk_state;
	if (!((1 << old_state) & (TCPF_CLOSE | TCPF_LISTEN)))
		goto out;

	/* Really, if the socket is already in listen state
	 * we can only allow the backlog to be adjusted.
	 */
	if (old_state != TCP_LISTEN) {
		err = FUNC0(sk, backlog);
		if (err)
			goto out;
	}
	sk->sk_max_ack_backlog = backlog;
	err = 0;

out:
	FUNC2(sk);
	return err;
}