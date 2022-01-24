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
struct inet6_ifaddr {int /*<<< orphan*/  lock; scalar_t__ prefered_lft; scalar_t__ valid_lft; scalar_t__ tokenized; struct inet6_ifaddr* if_next; } ;
struct TYPE_4__ {scalar_t__ s6_addr; } ;
struct TYPE_3__ {scalar_t__ rtr_solicits; } ;
struct inet6_dev {int if_flags; int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; int /*<<< orphan*/  dead; TYPE_2__ token; TYPE_1__ cnf; struct net_device* dev; } ;
struct in6_addr {scalar_t__ s6_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int IFA_F_OPTIMISTIC ; 
 int IFA_F_TENTATIVE ; 
 int IFF_LOOPBACK ; 
 int IFF_NOARP ; 
 int IF_READY ; 
 int IF_RS_SENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_linklocal_allrouters ; 
 int /*<<< orphan*/  FUNC2 (struct inet6_dev*) ; 
 scalar_t__ FUNC3 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inet6_dev *idev, struct in6_addr *token)
{
	struct inet6_ifaddr *ifp;
	struct net_device *dev = idev->dev;
	bool update_rs = false;
	struct in6_addr ll_addr;

	if (token == NULL)
		return -EINVAL;
	if (FUNC3(token))
		return -EINVAL;
	if (dev->flags & (IFF_LOOPBACK | IFF_NOARP))
		return -EINVAL;
	if (!FUNC2(idev))
		return -EINVAL;
	if (idev->cnf.rtr_solicits <= 0)
		return -EINVAL;

	FUNC9(&idev->lock);

	FUNC0(sizeof(token->s6_addr) != 16);
	FUNC5(idev->token.s6_addr + 8, token->s6_addr + 8, 8);

	FUNC10(&idev->lock);

	if (!idev->dead && (idev->if_flags & IF_READY) &&
	    !FUNC4(dev, &ll_addr, IFA_F_TENTATIVE |
			     IFA_F_OPTIMISTIC)) {

		/* If we're not ready, then normal ifup will take care
		 * of this. Otherwise, we need to request our rs here.
		 */
		FUNC6(dev, &ll_addr, &in6addr_linklocal_allrouters);
		update_rs = true;
	}

	FUNC9(&idev->lock);

	if (update_rs)
		idev->if_flags |= IF_RS_SENT;

	/* Well, that's kinda nasty ... */
	for (ifp = idev->addr_list; ifp; ifp = ifp->if_next) {
		FUNC7(&ifp->lock);
		if (ifp->tokenized) {
			ifp->valid_lft = 0;
			ifp->prefered_lft = 0;
		}
		FUNC8(&ifp->lock);
	}

	FUNC10(&idev->lock);
	FUNC1(0);
	return 0;
}