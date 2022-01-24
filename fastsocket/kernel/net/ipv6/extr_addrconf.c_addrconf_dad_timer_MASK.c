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
struct inet6_ifaddr {scalar_t__ probes; int flags; int /*<<< orphan*/  addr; struct inet6_dev* idev; int /*<<< orphan*/  lock; } ;
struct inet6_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; TYPE_1__* nd_parms; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  retrans_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_DAD ; 
 int IFA_F_DADFAILED ; 
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 scalar_t__ FUNC2 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_ifaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	struct inet6_ifaddr *ifp = (struct inet6_ifaddr *) data;
	struct inet6_dev *idev = ifp->idev;
	struct in6_addr mcaddr;

	if (!ifp->probes && FUNC2(ifp))
		goto out;

	FUNC6(&idev->lock);
	if (idev->dead) {
		FUNC7(&idev->lock);
		goto out;
	}
	FUNC8(&ifp->lock);
	if (ifp->probes == 0) {
		/*
		 * DAD was successful
		 */

		ifp->flags &= ~(IFA_F_TENTATIVE|IFA_F_OPTIMISTIC|IFA_F_DADFAILED);
		FUNC9(&ifp->lock);
		FUNC7(&idev->lock);

		FUNC1(ifp);

		goto out;
	}

	ifp->probes--;
	FUNC3(ifp, AC_DAD, ifp->idev->nd_parms->retrans_time);
	FUNC9(&ifp->lock);
	FUNC7(&idev->lock);

	/* send a neighbour solicitation for our addr */
	FUNC0(&ifp->addr, &mcaddr);
	FUNC5(ifp->idev->dev, NULL, &ifp->addr, &mcaddr, &in6addr_any);
out:
	FUNC4(ifp);
}