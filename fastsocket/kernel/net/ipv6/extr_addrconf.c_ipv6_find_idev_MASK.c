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
struct net_device {int flags; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int IFF_UP ; 
 struct inet6_dev* FUNC1 (struct net_device*) ; 
 struct inet6_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 

__attribute__((used)) static struct inet6_dev * FUNC4(struct net_device *dev)
{
	struct inet6_dev *idev;

	FUNC0();

	if ((idev = FUNC1(dev)) == NULL) {
		if ((idev = FUNC2(dev)) == NULL)
			return NULL;
	}

	if (dev->flags&IFF_UP)
		FUNC3(idev);
	return idev;
}