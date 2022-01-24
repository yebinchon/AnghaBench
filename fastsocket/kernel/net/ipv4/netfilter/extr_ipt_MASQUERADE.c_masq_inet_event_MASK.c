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
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_ifaddr {TYPE_1__* ifa_dev; } ;
struct TYPE_2__ {struct net_device* dev; } ;

/* Variables and functions */
 int FUNC0 (struct notifier_block*,unsigned long,struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct notifier_block *this,
			   unsigned long event,
			   void *ptr)
{
	struct net_device *dev = ((struct in_ifaddr *)ptr)->ifa_dev->dev;
	return FUNC0(this, event, dev);
}