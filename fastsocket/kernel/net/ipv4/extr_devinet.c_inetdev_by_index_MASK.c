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
struct net {int dummy; } ;
struct in_device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int) ; 
 int /*<<< orphan*/  dev_base_lock ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct in_device *FUNC4(struct net *net, int ifindex)
{
	struct net_device *dev;
	struct in_device *in_dev = NULL;
	FUNC2(&dev_base_lock);
	dev = FUNC0(net, ifindex);
	if (dev)
		in_dev = FUNC1(dev);
	FUNC3(&dev_base_lock);
	return in_dev;
}