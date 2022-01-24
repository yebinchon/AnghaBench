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
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct inet6_dev* FUNC3 (struct net_device*) ; 

__attribute__((used)) static struct inet6_dev *FUNC4(struct net_device *dev)
{
	struct inet6_dev *idev;

	FUNC0();

	if ((idev = FUNC3(dev)) == NULL)
		return NULL;

	/* Add default multicast route */
	FUNC2(dev);

	/* Add link local route */
	FUNC1(dev);
	return idev;
}