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
struct rt6_info {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct ifacaddr6* ac_list; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {int aca_users; int /*<<< orphan*/  aca_addr; struct ifacaddr6* aca_next; int /*<<< orphan*/  aca_lock; int /*<<< orphan*/  aca_refcnt; int /*<<< orphan*/  aca_tstamp; int /*<<< orphan*/  aca_cstamp; struct rt6_info* aca_rt; struct inet6_dev* aca_idev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct rt6_info*) ; 
 int FUNC1 (struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifacaddr6*) ; 
 struct rt6_info* FUNC3 (struct inet6_dev*,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct inet6_dev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt6_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (struct ifacaddr6*) ; 
 struct ifacaddr6* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct net_device *dev, struct in6_addr *addr)
{
	struct ifacaddr6 *aca;
	struct inet6_dev *idev;
	struct rt6_info *rt;
	int err;

	idev = FUNC6(dev);

	if (idev == NULL)
		return -EINVAL;

	FUNC14(&idev->lock);
	if (idev->dead) {
		err = -ENODEV;
		goto out;
	}

	for (aca = idev->ac_list; aca; aca = aca->aca_next) {
		if (FUNC10(&aca->aca_addr, addr)) {
			aca->aca_users++;
			err = 0;
			goto out;
		}
	}

	/*
	 *	not found: create a new one.
	 */

	aca = FUNC12(sizeof(struct ifacaddr6), GFP_ATOMIC);

	if (aca == NULL) {
		err = -ENOMEM;
		goto out;
	}

	rt = FUNC3(idev, addr, 1);
	if (FUNC0(rt)) {
		FUNC11(aca);
		err = FUNC1(rt);
		goto out;
	}

	FUNC9(&aca->aca_addr, addr);
	aca->aca_idev = idev;
	aca->aca_rt = rt;
	aca->aca_users = 1;
	/* aca_tstamp should be updated upon changes */
	aca->aca_cstamp = aca->aca_tstamp = jiffies;
	FUNC5(&aca->aca_refcnt, 2);
	FUNC13(&aca->aca_lock);

	aca->aca_next = idev->ac_list;
	idev->ac_list = aca;
	FUNC15(&idev->lock);

	FUNC8(rt);

	FUNC4(dev, &aca->aca_addr);

	FUNC2(aca);
	return 0;
out:
	FUNC15(&idev->lock);
	FUNC7(idev);
	return err;
}