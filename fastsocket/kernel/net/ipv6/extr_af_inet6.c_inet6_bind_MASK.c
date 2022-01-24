#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {scalar_t__ type; struct sock* sk; } ;
struct TYPE_6__ {scalar_t__* s6_addr32; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; scalar_t__ sin6_scope_id; int /*<<< orphan*/  sin6_port; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  sk_userlocks; TYPE_1__* sk_prot; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int ipv6only; int /*<<< orphan*/  saddr; int /*<<< orphan*/  rcv_saddr; } ;
struct inet_sock {scalar_t__ daddr; scalar_t__ dport; scalar_t__ num; int /*<<< orphan*/  sport; scalar_t__ saddr; scalar_t__ rcv_saddr; scalar_t__ transparent; scalar_t__ freebind; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_5__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;scalar_t__ (* get_port ) (struct sock*,unsigned short) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_BIND_SERVICE ; 
 int EACCES ; 
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 scalar_t__ LOOPBACK4_IPV6 ; 
 unsigned short PROT_SOCK ; 
 int RTN_BROADCAST ; 
 int RTN_LOCAL ; 
 int RTN_MULTICAST ; 
 int SIN6_LEN_RFC2133 ; 
 int /*<<< orphan*/  SOCK_BINDADDR_LOCK ; 
 int /*<<< orphan*/  SOCK_BINDPORT_LOCK ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ TCP_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC1 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct ipv6_pinfo* FUNC5 (struct sock*) ; 
 int FUNC6 (struct net*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct inet_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct net*,TYPE_2__*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 unsigned short FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 struct net* FUNC15 (struct sock*) ; 
 int FUNC16 (struct sock*,struct sockaddr*,int) ; 
 scalar_t__ FUNC17 (struct sock*,unsigned short) ; 
 int /*<<< orphan*/  sysctl_ip_nonlocal_bind ; 

int FUNC18(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
	struct sockaddr_in6 *addr=(struct sockaddr_in6 *)uaddr;
	struct sock *sk = sock->sk;
	struct inet_sock *inet = FUNC8(sk);
	struct ipv6_pinfo *np = FUNC5(sk);
	struct net *net = FUNC15(sk);
	__be32 v4addr = 0;
	unsigned short snum;
	int addr_type = 0;
	int err = 0;

	/* If the socket has its own bind function then use it. */
	if (sk->sk_prot->bind)
		return sk->sk_prot->bind(sk, uaddr, addr_len);

	if (addr_len < SIN6_LEN_RFC2133)
		return -EINVAL;
	addr_type = FUNC10(&addr->sin6_addr);
	if ((addr_type & IPV6_ADDR_MULTICAST) && sock->type == SOCK_STREAM)
		return -EINVAL;

	snum = FUNC13(addr->sin6_port);
	if (snum && snum < PROT_SOCK && !FUNC0(CAP_NET_BIND_SERVICE))
		return -EACCES;

	FUNC12(sk);

	/* Check these errors (active socket, double bind). */
	if (sk->sk_state != TCP_CLOSE || inet->num) {
		err = -EINVAL;
		goto out;
	}

	/* Check if the address belongs to the host. */
	if (addr_type == IPV6_ADDR_MAPPED) {
		int chk_addr_ret;

		/* Binding to v4-mapped address on a v6-only socket
		 * makes no sense
		 */
		if (np->ipv6only) {
			err = -EINVAL;
			goto out;
		}

		/* Reproduce AF_INET checks to make the bindings consitant */
		v4addr = addr->sin6_addr.s6_addr32[3];
		chk_addr_ret = FUNC6(net, v4addr);
		if (!sysctl_ip_nonlocal_bind &&
		    !(inet->freebind || inet->transparent) &&
		    v4addr != FUNC3(INADDR_ANY) &&
		    chk_addr_ret != RTN_LOCAL &&
		    chk_addr_ret != RTN_MULTICAST &&
		    chk_addr_ret != RTN_BROADCAST) {
			err = -EADDRNOTAVAIL;
			goto out;
		}
	} else {
		if (addr_type != IPV6_ADDR_ANY) {
			struct net_device *dev = NULL;

			if (addr_type & IPV6_ADDR_LINKLOCAL) {
				if (addr_len >= sizeof(struct sockaddr_in6) &&
				    addr->sin6_scope_id) {
					/* Override any existing binding, if another one
					 * is supplied by user.
					 */
					sk->sk_bound_dev_if = addr->sin6_scope_id;
				}

				/* Binding to link-local address requires an interface */
				if (!sk->sk_bound_dev_if) {
					err = -EINVAL;
					goto out;
				}
				dev = FUNC1(net, sk->sk_bound_dev_if);
				if (!dev) {
					err = -ENODEV;
					goto out;
				}
			}

			/* ipv4 addr of the socket is invalid.  Only the
			 * unspecified and mapped address have a v4 equivalent.
			 */
			v4addr = LOOPBACK4_IPV6;
			if (!(addr_type & IPV6_ADDR_MULTICAST))	{
				if (!inet->transparent &&
				    !FUNC11(net, &addr->sin6_addr,
						   dev, 0)) {
					if (dev)
						FUNC2(dev);
					err = -EADDRNOTAVAIL;
					goto out;
				}
			}
			if (dev)
				FUNC2(dev);
		}
	}

	inet->rcv_saddr = v4addr;
	inet->saddr = v4addr;

	FUNC9(&np->rcv_saddr, &addr->sin6_addr);

	if (!(addr_type & IPV6_ADDR_MULTICAST))
		FUNC9(&np->saddr, &addr->sin6_addr);

	/* Make sure we are allowed to bind here. */
	if (sk->sk_prot->get_port(sk, snum)) {
		FUNC7(sk);
		err = -EADDRINUSE;
		goto out;
	}

	if (addr_type != IPV6_ADDR_ANY) {
		sk->sk_userlocks |= SOCK_BINDADDR_LOCK;
		if (addr_type != IPV6_ADDR_MAPPED)
			np->ipv6only = 1;
	}
	if (snum)
		sk->sk_userlocks |= SOCK_BINDPORT_LOCK;
	inet->sport = FUNC4(inet->num);
	inet->dport = 0;
	inet->daddr = 0;
out:
	FUNC14(sk);
	return err;
}