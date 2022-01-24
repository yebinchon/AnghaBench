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
struct net_device {int dummy; } ;
struct TYPE_2__ {int mtu6; } ;
struct inet6_dev {TYPE_1__ cnf; } ;

/* Variables and functions */
 int IPV6_MIN_MTU ; 
 struct inet6_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev)
{
	int mtu = IPV6_MIN_MTU;
	struct inet6_dev *idev;

	idev = FUNC0(dev);
	if (idev) {
		mtu = idev->cnf.mtu6;
		FUNC1(idev);
	}
	return mtu;
}