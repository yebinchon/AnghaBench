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
struct inet6_ifaddr {int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct in6_addr *addr, struct net_device *dev)
{
	struct inet6_dev *idev;
	struct inet6_ifaddr *ifa;
	int	onlink;

	onlink = 0;
	FUNC2();
	idev = FUNC0(dev);
	if (idev) {
		FUNC4(&idev->lock);
		for (ifa = idev->addr_list; ifa; ifa = ifa->if_next) {
			onlink = FUNC1(addr, &ifa->addr,
						   ifa->prefix_len);
			if (onlink)
				break;
		}
		FUNC5(&idev->lock);
	}
	FUNC3();
	return onlink;
}