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
struct sockaddr {scalar_t__ sa_family; } ;
struct net_device_ops {int (* ndo_set_mac_address ) (struct net_device*,struct sockaddr*) ;} ;
struct net_device {scalar_t__ type; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct sockaddr*) ; 

int FUNC3(struct net_device *dev, struct sockaddr *sa)
{
	const struct net_device_ops *ops = dev->netdev_ops;
	int err;

	if (!ops->ndo_set_mac_address)
		return -EOPNOTSUPP;
	if (sa->sa_family != dev->type)
		return -EINVAL;
	if (!FUNC1(dev))
		return -ENODEV;
	err = ops->ndo_set_mac_address(dev, sa);
	if (!err)
		FUNC0(NETDEV_CHANGEADDR, dev);
	return err;
}