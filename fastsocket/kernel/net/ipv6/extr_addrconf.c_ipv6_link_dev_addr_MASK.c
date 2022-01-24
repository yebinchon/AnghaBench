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
struct inet6_ifaddr {struct inet6_ifaddr* if_next; int /*<<< orphan*/  addr; } ;
struct inet6_dev {struct inet6_ifaddr* addr_list; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct inet6_dev *idev, struct inet6_ifaddr *ifp)
{
	struct inet6_ifaddr *ifa, **ifap;
	int ifp_scope = FUNC0(&ifp->addr);

	/*
	 * Each device address list is sorted in order of scope -
	 * global before linklocal.
	 */
	for (ifap = &idev->addr_list; (ifa = *ifap) != NULL;
	     ifap = &ifa->if_next) {
		if (ifp_scope >= FUNC0(&ifa->addr))
			break;
	}

	ifp->if_next = *ifap;
	*ifap = ifp;
}