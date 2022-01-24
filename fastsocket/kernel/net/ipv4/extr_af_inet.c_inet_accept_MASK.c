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
struct sock {int sk_state; TYPE_1__* sk_prot; } ;
struct TYPE_2__ {struct sock* (* accept ) (struct sock*,int,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SS_CONNECTED ; 
 int TCPF_CLOSE ; 
 int TCPF_CLOSE_WAIT ; 
 int TCPF_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct socket*) ; 
 struct sock* FUNC5 (struct sock*,int,int*) ; 

int FUNC6(struct socket *sock, struct socket *newsock, int flags)
{
	struct sock *sk1 = sock->sk;
	int err = -EINVAL;
	struct sock *sk2 = sk1->sk_prot->accept(sk1, flags, &err);

	if (!sk2)
		goto do_err;

	FUNC2(sk2);

	FUNC1(sk2);

	FUNC0(!((1 << sk2->sk_state) &
		  (TCPF_ESTABLISHED | TCPF_CLOSE_WAIT | TCPF_CLOSE)));

	FUNC4(sk2, newsock);

	newsock->state = SS_CONNECTED;
	err = 0;
	FUNC3(sk2);
do_err:
	return err;
}