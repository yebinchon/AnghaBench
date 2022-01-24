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
struct TYPE_2__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {TYPE_1__ u; struct net_device* rt6i_dev; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_dev {int /*<<< orphan*/  lock; scalar_t__ dead; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct inet6_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct rt6_info* FUNC8 (struct net*,struct in6_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inet6_dev *FUNC9(struct net *net,
					 struct in6_addr *group,
					 int ifindex)
{
	struct net_device *dev = NULL;
	struct inet6_dev *idev = NULL;

	if (ifindex == 0) {
		struct rt6_info *rt;

		rt = FUNC8(net, group, NULL, 0, 0);
		if (rt) {
			dev = rt->rt6i_dev;
			FUNC1(dev);
			FUNC3(&rt->u.dst);
		}
	} else
		dev = FUNC0(net, ifindex);

	if (!dev)
		goto nodev;
	idev = FUNC4(dev);
	if (!idev)
		goto release;
	FUNC6(&idev->lock);
	if (idev->dead)
		goto unlock_release;

	return idev;

unlock_release:
	FUNC7(&idev->lock);
	FUNC5(idev);
release:
	FUNC2(dev);
nodev:
	return NULL;
}