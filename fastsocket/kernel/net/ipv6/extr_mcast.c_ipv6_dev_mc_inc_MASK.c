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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifmcaddr6 {int mca_users; size_t mca_sfmode; int* mca_sfcount; int /*<<< orphan*/  mca_addr; struct ifmcaddr6* next; int /*<<< orphan*/  mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_refcnt; int /*<<< orphan*/  mca_tstamp; int /*<<< orphan*/  mca_cstamp; struct inet6_dev* idev; int /*<<< orphan*/  mca_timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IPV6_ADDR_SCOPE_LINKLOCAL ; 
 int /*<<< orphan*/  MAF_NOREPORT ; 
 size_t MCAST_EXCLUDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  igmp6_timer_handler ; 
 struct inet6_dev* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_dev*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ifmcaddr6* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC11 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct net_device *dev, const struct in6_addr *addr)
{
	struct ifmcaddr6 *mc;
	struct inet6_dev *idev;

	idev = FUNC3(dev);

	if (idev == NULL)
		return -EINVAL;

	FUNC14(&idev->lock);
	if (idev->dead) {
		FUNC15(&idev->lock);
		FUNC4(idev);
		return -ENODEV;
	}

	for (mc = idev->mc_list; mc; mc = mc->next) {
		if (FUNC7(&mc->mca_addr, addr)) {
			mc->mca_users++;
			FUNC15(&idev->lock);
			FUNC5(idev, &mc->mca_addr, MCAST_EXCLUDE, 0,
				NULL, 0);
			FUNC4(idev);
			return 0;
		}
	}

	/*
	 *	not found: create a new one.
	 */

	mc = FUNC9(sizeof(struct ifmcaddr6), GFP_ATOMIC);

	if (mc == NULL) {
		FUNC15(&idev->lock);
		FUNC4(idev);
		return -ENOMEM;
	}

	FUNC12(&mc->mca_timer, igmp6_timer_handler, (unsigned long)mc);

	FUNC6(&mc->mca_addr, addr);
	mc->idev = idev;
	mc->mca_users = 1;
	/* mca_stamp should be updated upon changes */
	mc->mca_cstamp = mc->mca_tstamp = jiffies;
	FUNC1(&mc->mca_refcnt, 2);
	FUNC13(&mc->mca_lock);

	/* initial mode is (EX, empty) */
	mc->mca_sfmode = MCAST_EXCLUDE;
	mc->mca_sfcount[MCAST_EXCLUDE] = 1;

	if (FUNC8(&mc->mca_addr) ||
	    FUNC0(&mc->mca_addr) < IPV6_ADDR_SCOPE_LINKLOCAL)
		mc->mca_flags |= MAF_NOREPORT;

	mc->next = idev->mc_list;
	idev->mc_list = mc;
	FUNC15(&idev->lock);

	FUNC11(idev, &mc->mca_addr);
	FUNC2(mc);
	FUNC10(mc);
	return 0;
}