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
struct socket {scalar_t__ type; int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer_wait; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int O_NONBLOCK ; 
 scalar_t__ SOCK_SEQPACKET ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 scalar_t__ TCP_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sock*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct socket*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct socket *newsock, int flags)
{
	struct sock *sk = sock->sk;
	struct sock *tsk;
	struct sk_buff *skb;
	int err;

	err = -EOPNOTSUPP;
	if (sock->type != SOCK_STREAM && sock->type != SOCK_SEQPACKET)
		goto out;

	err = -EINVAL;
	if (sk->sk_state != TCP_LISTEN)
		goto out;

	/* If socket state is TCP_LISTEN it cannot change (for now...),
	 * so that no locks are necessary.
	 */

	skb = FUNC1(sk, 0, flags&O_NONBLOCK, &err);
	if (!skb) {
		/* This means receive shutdown. */
		if (err == 0)
			err = -EINVAL;
		goto out;
	}

	tsk = skb->sk;
	FUNC0(sk, skb);
	FUNC6(&FUNC3(sk)->peer_wait);

	/* attach accepted sock to socket */
	FUNC4(tsk);
	newsock->state = SS_CONNECTED;
	FUNC2(tsk, newsock);
	FUNC5(tsk);
	return 0;

out:
	return err;
}