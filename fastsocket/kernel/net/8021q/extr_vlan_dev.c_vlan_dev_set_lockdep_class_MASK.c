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
struct net_device {int /*<<< orphan*/  addr_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  vlan_dev_set_lockdep_one ; 
 int /*<<< orphan*/  vlan_netdev_addr_lock_key ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, int subclass)
{
	FUNC0(&dev->addr_list_lock,
				       &vlan_netdev_addr_lock_key,
				       subclass);
	FUNC1(dev, vlan_dev_set_lockdep_one, &subclass);
}