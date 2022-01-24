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
struct socket {struct sock* sk; } ;
struct sockaddr_dn {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int FUNC0 (struct sock*,struct sockaddr_dn*,int,long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 long FUNC3 (struct sock*,int) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *uaddr, int addrlen, int flags)
{
	struct sockaddr_dn *addr = (struct sockaddr_dn *)uaddr;
	struct sock *sk = sock->sk;
	int err;
	long timeo = FUNC3(sk, flags & O_NONBLOCK);

	FUNC1(sk);
	err = FUNC0(sk, addr, addrlen, &timeo, 0);
	FUNC2(sk);

	return err;
}