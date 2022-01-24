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
struct sock {TYPE_1__* sk_prot; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; } ;
struct TYPE_3__ {int (* sendmsg ) (struct kiocb*,struct sock*,struct msghdr*,size_t) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int FUNC3 (struct kiocb*,struct sock*,struct msghdr*,size_t) ; 

int FUNC4(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
		 size_t size)
{
	struct sock *sk = sock->sk;

	FUNC2(sk);

	/* We may need to bind the socket. */
	if (!FUNC1(sk)->num && FUNC0(sk))
		return -EAGAIN;

	return sk->sk_prot->sendmsg(iocb, sk, msg, size);
}