#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int flags; } ;
struct inet6_ifaddr {int probes; int /*<<< orphan*/  lock; TYPE_2__* idev; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {scalar_t__ rtr_solicits; int /*<<< orphan*/  rtr_solicit_interval; } ;
struct TYPE_4__ {TYPE_1__ cnf; int /*<<< orphan*/  if_flags; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_RS ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  IF_RS_SENT ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_linklocal_allrouters ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inet6_ifaddr *ifp)
{
	struct net_device *	dev = ifp->idev->dev;

	/*
	 *	Configure the address for reception. Now it is valid.
	 */

	FUNC3(RTM_NEWADDR, ifp);

	/* If added prefix is link local and we are prepared to process
	   router advertisements, start sending router solicitations.
	 */

	if (FUNC1(ifp->idev) &&
	    ifp->idev->cnf.rtr_solicits > 0 &&
	    (dev->flags&IFF_LOOPBACK) == 0 &&
	    (FUNC2(&ifp->addr) & IPV6_ADDR_LINKLOCAL)) {
		/*
		 *	If a host as already performed a random delay
		 *	[...] as part of DAD [...] there is no need
		 *	to delay again before sending the first RS
		 */
		FUNC4(ifp->idev->dev, &ifp->addr, &in6addr_linklocal_allrouters);

		FUNC5(&ifp->lock);
		ifp->probes = 1;
		ifp->idev->if_flags |= IF_RS_SENT;
		FUNC0(ifp, AC_RS, ifp->idev->cnf.rtr_solicit_interval);
		FUNC6(&ifp->lock);
	}
}