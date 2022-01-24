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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {unsigned int prefix_len; int /*<<< orphan*/  addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENXIO ; 
 struct net_device* FUNC0 (struct net*,int) ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_ifaddr*) ; 
 scalar_t__ FUNC4 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net *net, int ifindex, struct in6_addr *pfx,
			  unsigned int plen)
{
	struct inet6_ifaddr *ifp;
	struct inet6_dev *idev;
	struct net_device *dev;

	if (plen > 128)
		return -EINVAL;

	dev = FUNC0(net, ifindex);
	if (!dev)
		return -ENODEV;

	if ((idev = FUNC1(dev)) == NULL)
		return -ENXIO;

	FUNC6(&idev->lock);
	for (ifp = idev->addr_list; ifp; ifp=ifp->if_next) {
		if (ifp->prefix_len == plen &&
		    FUNC4(pfx, &ifp->addr)) {
			FUNC3(ifp);
			FUNC7(&idev->lock);

			FUNC5(ifp);

			/* If the last address is deleted administratively,
			   disable IPv6 on this interface.
			 */
			if (idev->addr_list == NULL)
				FUNC2(idev->dev, 1);
			return 0;
		}
	}
	FUNC7(&idev->lock);
	return -EADDRNOTAVAIL;
}