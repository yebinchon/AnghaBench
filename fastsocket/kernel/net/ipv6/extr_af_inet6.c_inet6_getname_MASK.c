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
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_port; scalar_t__ sin6_flowinfo; int /*<<< orphan*/  sin6_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; scalar_t__ sk_bound_dev_if; } ;
struct ipv6_pinfo {int /*<<< orphan*/  rcv_saddr; int /*<<< orphan*/  saddr; scalar_t__ flow_label; scalar_t__ sndflow; int /*<<< orphan*/  daddr; } ;
struct inet_sock {scalar_t__ sport; scalar_t__ dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int ENOTCONN ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int TCPF_CLOSE ; 
 int TCPF_SYN_SENT ; 
 struct ipv6_pinfo* FUNC0 (struct sock*) ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct socket *sock, struct sockaddr *uaddr,
		 int *uaddr_len, int peer)
{
	struct sockaddr_in6 *sin=(struct sockaddr_in6 *)uaddr;
	struct sock *sk = sock->sk;
	struct inet_sock *inet = FUNC1(sk);
	struct ipv6_pinfo *np = FUNC0(sk);

	sin->sin6_family = AF_INET6;
	sin->sin6_flowinfo = 0;
	sin->sin6_scope_id = 0;
	if (peer) {
		if (!inet->dport)
			return -ENOTCONN;
		if (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)) &&
		    peer == 1)
			return -ENOTCONN;
		sin->sin6_port = inet->dport;
		FUNC3(&sin->sin6_addr, &np->daddr);
		if (np->sndflow)
			sin->sin6_flowinfo = np->flow_label;
	} else {
		if (FUNC2(&np->rcv_saddr))
			FUNC3(&sin->sin6_addr, &np->saddr);
		else
			FUNC3(&sin->sin6_addr, &np->rcv_saddr);

		sin->sin6_port = inet->sport;
	}
	if (FUNC4(&sin->sin6_addr) & IPV6_ADDR_LINKLOCAL)
		sin->sin6_scope_id = sk->sk_bound_dev_if;
	*uaddr_len = sizeof(*sin);
	return(0);
}