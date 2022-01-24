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
struct net_device {scalar_t__ addr_len; int /*<<< orphan*/  dev_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 

int FUNC3(struct net_device *to_dev,
			  struct net_device *from_dev,
			  unsigned char addr_type)
{
	FUNC0();

	if (from_dev->addr_len != to_dev->addr_len)
		return -EINVAL;
	FUNC1(&to_dev->dev_addrs, &from_dev->dev_addrs,
			       to_dev->addr_len, addr_type);
	FUNC2(NETDEV_CHANGEADDR, to_dev);
	return 0;
}