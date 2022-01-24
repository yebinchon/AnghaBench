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
typedef  size_t u8 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int scope; TYPE_1__* idev; int /*<<< orphan*/  addr; struct inet6_ifaddr* lst_next; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int IFA_HOST ; 
 int IFA_LINK ; 
 int /*<<< orphan*/  addrconf_hash_lock ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr** inet6_addr_lst ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 size_t FUNC3 (struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct inet6_ifaddr *FUNC7(struct net *net, const struct in6_addr *addr,
				     struct net_device *dev, int strict)
{
	struct inet6_ifaddr * ifp;
	u8 hash = FUNC3(addr);

	FUNC5(&addrconf_hash_lock);
	for(ifp = inet6_addr_lst[hash]; ifp; ifp=ifp->lst_next) {
		if (!FUNC4(FUNC0(ifp->idev->dev), net))
			continue;
		if (FUNC2(&ifp->addr, addr)) {
			if (dev == NULL || ifp->idev->dev == dev ||
			    !(ifp->scope&(IFA_LINK|IFA_HOST) || strict)) {
				FUNC1(ifp);
				break;
			}
		}
	}
	FUNC6(&addrconf_hash_lock);

	return ifp;
}