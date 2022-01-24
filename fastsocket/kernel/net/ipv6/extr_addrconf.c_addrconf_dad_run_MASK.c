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
struct inet6_ifaddr {int flags; scalar_t__ dead; int /*<<< orphan*/  lock; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; } ;

/* Variables and functions */
 int IFA_F_TENTATIVE ; 
 scalar_t__ INET6_IFADDR_STATE_DAD ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inet6_dev *idev) {
	struct inet6_ifaddr *ifp;

	FUNC1(&idev->lock);
	for (ifp = idev->addr_list; ifp; ifp = ifp->if_next) {
		FUNC3(&ifp->lock);
		if (ifp->flags & IFA_F_TENTATIVE &&
		    ifp->dead == INET6_IFADDR_STATE_DAD)
			FUNC0(ifp);
		FUNC4(&ifp->lock);
	}
	FUNC2(&idev->lock);
}