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
struct sockaddr_ieee802154 {scalar_t__ family; int /*<<< orphan*/  addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_bound_dev_if; } ;
struct net_device {scalar_t__ type; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 scalar_t__ AF_IEEE802154 ; 
 scalar_t__ ARPHRD_IEEE802154 ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sockaddr *uaddr, int len)
{
	struct sockaddr_ieee802154 *addr = (struct sockaddr_ieee802154 *)uaddr;
	int err = 0;
	struct net_device *dev = NULL;

	if (len < sizeof(*addr))
		return -EINVAL;

	if (addr->family != AF_IEEE802154)
		return -EINVAL;

	FUNC2(sk);

	dev = FUNC1(FUNC5(sk), &addr->addr);
	if (!dev) {
		err = -ENODEV;
		goto out;
	}

	if (dev->type != ARPHRD_IEEE802154) {
		err = -ENODEV;
		goto out_put;
	}

	sk->sk_bound_dev_if = dev->ifindex;
	FUNC4(sk);

out_put:
	FUNC0(dev);
out:
	FUNC3(sk);

	return err;
}