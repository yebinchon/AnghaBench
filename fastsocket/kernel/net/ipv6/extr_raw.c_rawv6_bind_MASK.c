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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; scalar_t__ sin6_scope_id; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_bound_dev_if; } ;
struct net_device {int dummy; } ;
struct ipv6_pinfo {int /*<<< orphan*/  saddr; int /*<<< orphan*/  rcv_saddr; } ;
struct inet_sock {int /*<<< orphan*/  saddr; int /*<<< orphan*/  rcv_saddr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_MAPPED ; 
 int IPV6_ADDR_MULTICAST ; 
 int /*<<< orphan*/  LOOPBACK4_IPV6 ; 
 int SIN6_LEN_RFC2133 ; 
 scalar_t__ TCP_CLOSE ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct ipv6_pinfo* FUNC2 (struct sock*) ; 
 struct inet_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
	struct inet_sock *inet = FUNC3(sk);
	struct ipv6_pinfo *np = FUNC2(sk);
	struct sockaddr_in6 *addr = (struct sockaddr_in6 *) uaddr;
	__be32 v4addr = 0;
	int addr_type;
	int err;

	if (addr_len < SIN6_LEN_RFC2133)
		return -EINVAL;
	addr_type = FUNC5(&addr->sin6_addr);

	/* Raw sockets are IPv6 only */
	if (addr_type == IPV6_ADDR_MAPPED)
		return(-EADDRNOTAVAIL);

	FUNC7(sk);

	err = -EINVAL;
	if (sk->sk_state != TCP_CLOSE)
		goto out;

	/* Check if the address belongs to the host. */
	if (addr_type != IPV6_ADDR_ANY) {
		struct net_device *dev = NULL;

		if (addr_type & IPV6_ADDR_LINKLOCAL) {
			if (addr_len >= sizeof(struct sockaddr_in6) &&
			    addr->sin6_scope_id) {
				/* Override any existing binding, if another
				 * one is supplied by user.
				 */
				sk->sk_bound_dev_if = addr->sin6_scope_id;
			}

			/* Binding to link-local address requires an interface */
			if (!sk->sk_bound_dev_if)
				goto out;

			dev = FUNC0(FUNC9(sk), sk->sk_bound_dev_if);
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
			err = -EADDRNOTAVAIL;
			if (!FUNC6(FUNC9(sk), &addr->sin6_addr,
					   dev, 0)) {
				if (dev)
					FUNC1(dev);
				goto out;
			}
		}
		if (dev)
			FUNC1(dev);
	}

	inet->rcv_saddr = inet->saddr = v4addr;
	FUNC4(&np->rcv_saddr, &addr->sin6_addr);
	if (!(addr_type & IPV6_ADDR_MULTICAST))
		FUNC4(&np->saddr, &addr->sin6_addr);
	err = 0;
out:
	FUNC8(sk);
	return err;
}