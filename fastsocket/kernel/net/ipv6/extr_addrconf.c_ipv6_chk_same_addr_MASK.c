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
struct inet6_ifaddr {TYPE_1__* idev; int /*<<< orphan*/  addr; struct inet6_ifaddr* lst_next; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct inet6_ifaddr** inet6_addr_lst ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 size_t FUNC2 (struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net*) ; 

__attribute__((used)) static
int FUNC4(struct net *net, const struct in6_addr *addr,
		       struct net_device *dev)
{
	struct inet6_ifaddr * ifp;
	u8 hash = FUNC2(addr);

	for(ifp = inet6_addr_lst[hash]; ifp; ifp=ifp->lst_next) {
		if (!FUNC3(FUNC0(ifp->idev->dev), net))
			continue;
		if (FUNC1(&ifp->addr, addr)) {
			if (dev == NULL || ifp->idev->dev == dev)
				break;
		}
	}
	return ifp != NULL;
}