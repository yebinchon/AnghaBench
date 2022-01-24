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
struct socket {int /*<<< orphan*/  state; struct sock* sk; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_2__ {struct sock* (* accept ) (struct sock*,int,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct socket*) ; 
 struct sock* FUNC3 (struct sock*,int,int*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct socket *newsock,
				int flags)
{
	struct sock *sk = sock->sk;
	struct sock *newsk;
	int err;

	newsk = sk->sk_prot->accept(sk, flags, &err);
	if (!newsk)
		return err;

	FUNC0(newsk);
	FUNC2(newsk, newsock);
	newsock->state = SS_CONNECTED;
	FUNC1(newsk);
	return 0;
}