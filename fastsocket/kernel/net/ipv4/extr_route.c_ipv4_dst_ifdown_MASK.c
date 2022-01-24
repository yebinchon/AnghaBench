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
struct rtable {struct in_device* idev; } ;
struct net_device {int dummy; } ;
struct in_device {struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct net_device* loopback_dev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct net_device*) ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 

__attribute__((used)) static void FUNC3(struct dst_entry *dst, struct net_device *dev,
			    int how)
{
	struct rtable *rt = (struct rtable *) dst;
	struct in_device *idev = rt->idev;
	if (dev != FUNC0(dev)->loopback_dev && idev && idev->dev == dev) {
		struct in_device *loopback_idev =
			FUNC1(FUNC0(dev)->loopback_dev);
		if (loopback_idev) {
			rt->idev = loopback_idev;
			FUNC2(idev);
		}
	}
}