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
struct socket {TYPE_1__* ops; struct sock* sk; } ;
struct sock {int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_type; int /*<<< orphan*/  sk_family; } ;
struct TYPE_2__ {int (* accept ) (struct socket*,struct socket*,int) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*) ; 
 int FUNC3 (struct socket*,struct socket*,int) ; 

int FUNC4(struct socket *sock, struct socket **newsock, int flags)
{
	struct sock *sk = sock->sk;
	int err;

	err = FUNC1(sk->sk_family, sk->sk_type, sk->sk_protocol,
			       newsock);
	if (err < 0)
		goto done;

	err = sock->ops->accept(sock, *newsock, flags);
	if (err < 0) {
		FUNC2(*newsock);
		*newsock = NULL;
		goto done;
	}

	(*newsock)->ops = sock->ops;
	FUNC0((*newsock)->ops->owner);

done:
	return err;
}