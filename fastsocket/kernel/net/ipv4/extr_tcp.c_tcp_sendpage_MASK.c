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
struct sock {int sk_route_caps; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int NETIF_F_ALL_CSUM ; 
 int NETIF_F_SG ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct page**,int,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,struct page*,int,size_t,int) ; 

ssize_t FUNC5(struct socket *sock, struct page *page, int offset,
		     size_t size, int flags)
{
	ssize_t res;
	struct sock *sk = sock->sk;

	if (!(sk->sk_route_caps & NETIF_F_SG) ||
	    !(sk->sk_route_caps & NETIF_F_ALL_CSUM))
		return FUNC4(sock, page, offset, size, flags);

	FUNC2(sk);
	FUNC0(sk);
	res = FUNC1(sk, &page, offset, size, flags);
	FUNC0(sk);
	FUNC3(sk);
	return res;
}