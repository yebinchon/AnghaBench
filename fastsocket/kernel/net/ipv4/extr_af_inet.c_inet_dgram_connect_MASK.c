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
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {TYPE_1__* sk_prot; } ;
struct TYPE_4__ {int /*<<< orphan*/  num; } ;
struct TYPE_3__ {int (* disconnect ) (struct sock*,int) ;int (* connect ) (struct sock*,struct sockaddr*,int) ;} ;

/* Variables and functions */
 scalar_t__ AF_UNSPEC ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 TYPE_2__* FUNC1 (struct sock*) ; 
 int FUNC2 (struct sock*,int) ; 
 int FUNC3 (struct sock*,struct sockaddr*,int) ; 

int FUNC4(struct socket *sock, struct sockaddr * uaddr,
		       int addr_len, int flags)
{
	struct sock *sk = sock->sk;

	if (uaddr->sa_family == AF_UNSPEC)
		return sk->sk_prot->disconnect(sk, flags);

	if (!FUNC1(sk)->num && FUNC0(sk))
		return -EAGAIN;
	return sk->sk_prot->connect(sk, (struct sockaddr *)uaddr, addr_len);
}