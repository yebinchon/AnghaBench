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
struct inet6_ifaddr {scalar_t__ scope; unsigned char flags; int /*<<< orphan*/  addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 scalar_t__ IFA_LINK ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *dev, struct in6_addr *addr,
		    unsigned char banned_flags)
{
	struct inet6_dev *idev;
	int err = -EADDRNOTAVAIL;

	FUNC2();
	if ((idev = FUNC0(dev)) != NULL) {
		struct inet6_ifaddr *ifp;

		FUNC4(&idev->lock);
		for (ifp=idev->addr_list; ifp; ifp=ifp->if_next) {
			if (ifp->scope == IFA_LINK && !(ifp->flags & banned_flags)) {
				FUNC1(addr, &ifp->addr);
				err = 0;
				break;
			}
		}
		FUNC5(&idev->lock);
	}
	FUNC3();
	return err;
}