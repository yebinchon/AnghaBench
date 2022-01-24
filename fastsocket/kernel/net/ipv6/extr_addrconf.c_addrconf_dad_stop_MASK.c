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
struct inet6_ifaddr {int flags; int /*<<< orphan*/  lock; struct inet6_ifaddr* ifpub; } ;

/* Variables and functions */
 int IFA_F_DADFAILED ; 
 int IFA_F_PERMANENT ; 
 int IFA_F_TEMPORARY ; 
 int IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_ifaddr*,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inet6_ifaddr *ifp, int dad_failed)
{
	if (ifp->flags&IFA_F_PERMANENT) {
		FUNC5(&ifp->lock);
		FUNC0(ifp);
		ifp->flags |= IFA_F_TENTATIVE;
		if (dad_failed)
			ifp->flags |= IFA_F_DADFAILED;
		FUNC6(&ifp->lock);
		FUNC2(ifp);
#ifdef CONFIG_IPV6_PRIVACY
	} else if (ifp->flags&IFA_F_TEMPORARY) {
		struct inet6_ifaddr *ifpub;
		spin_lock_bh(&ifp->lock);
		ifpub = ifp->ifpub;
		if (ifpub) {
			in6_ifa_hold(ifpub);
			spin_unlock_bh(&ifp->lock);
			ipv6_create_tempaddr(ifpub, ifp);
			in6_ifa_put(ifpub);
		} else {
			spin_unlock_bh(&ifp->lock);
		}
		ipv6_del_addr(ifp);
#endif
	} else
		FUNC4(ifp);
}