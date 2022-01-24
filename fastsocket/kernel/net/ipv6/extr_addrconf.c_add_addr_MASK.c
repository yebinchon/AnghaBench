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
struct inet6_ifaddr {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC2 (struct inet6_dev*,struct in6_addr const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inet6_dev *idev, const struct in6_addr *addr,
		     int plen, int scope)
{
	struct inet6_ifaddr *ifp;

	ifp = FUNC2(idev, addr, plen, scope, IFA_F_PERMANENT, 0, 0);
	if (!FUNC0(ifp)) {
		FUNC4(&ifp->lock);
		ifp->flags &= ~IFA_F_TENTATIVE;
		FUNC5(&ifp->lock);
		FUNC3(RTM_NEWADDR, ifp);
		FUNC1(ifp);
	}
}