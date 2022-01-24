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
struct sock {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct ieee802154_addr {int dummy; } ;
struct dgram_sock {int bound; int /*<<< orphan*/  src_addr; } ;

/* Variables and functions */
 scalar_t__ AF_IEEE802154 ; 
 scalar_t__ ARPHRD_IEEE802154 ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct dgram_sock* FUNC1 (struct sock*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sockaddr *uaddr, int len)
{
	struct sockaddr_ieee802154 *addr = (struct sockaddr_ieee802154 *)uaddr;
	struct dgram_sock *ro = FUNC1(sk);
	int err = -EINVAL;
	struct net_device *dev;

	FUNC3(sk);

	ro->bound = 0;

	if (len < sizeof(*addr))
		goto out;

	if (addr->family != AF_IEEE802154)
		goto out;

	dev = FUNC2(FUNC6(sk), &addr->addr);
	if (!dev) {
		err = -ENODEV;
		goto out;
	}

	if (dev->type != ARPHRD_IEEE802154) {
		err = -ENODEV;
		goto out_put;
	}

	FUNC4(&ro->src_addr, &addr->addr, sizeof(struct ieee802154_addr));

	ro->bound = 1;
	err = 0;
out_put:
	FUNC0(dev);
out:
	FUNC5(sk);

	return err;
}