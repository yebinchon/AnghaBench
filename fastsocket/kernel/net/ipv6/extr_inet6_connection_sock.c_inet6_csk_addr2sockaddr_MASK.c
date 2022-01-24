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
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_flowinfo; int /*<<< orphan*/  sin6_port; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct ipv6_pinfo {int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int IPV6_ADDR_LINKLOCAL ; 
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct sock *sk, struct sockaddr * uaddr)
{
	struct ipv6_pinfo *np = FUNC0(sk);
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *) uaddr;

	sin6->sin6_family = AF_INET6;
	FUNC2(&sin6->sin6_addr, &np->daddr);
	sin6->sin6_port	= FUNC1(sk)->dport;
	/* We do not store received flowlabel for TCP */
	sin6->sin6_flowinfo = 0;
	sin6->sin6_scope_id = 0;
	if (sk->sk_bound_dev_if &&
	    FUNC3(&sin6->sin6_addr) & IPV6_ADDR_LINKLOCAL)
		sin6->sin6_scope_id = sk->sk_bound_dev_if;
}