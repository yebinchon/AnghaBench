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
struct net_device_stats {int dummy; } ;
struct net_device_ops {struct net_device_stats const* (* ndo_get_stats ) (struct net_device*) ;} ;
struct net_device {struct net_device_stats const stats; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device_stats const*) ; 
 struct net_device_stats const* FUNC1 (struct net_device*) ; 

const struct net_device_stats *FUNC2(struct net_device *dev)
{
	const struct net_device_ops *ops = dev->netdev_ops;

	if (ops->ndo_get_stats)
		return ops->ndo_get_stats(dev);

	FUNC0(dev, &dev->stats);
	return &dev->stats;
}