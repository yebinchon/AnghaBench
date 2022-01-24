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
struct net_device {int flags; } ;
struct TYPE_2__ {struct net_device* real_dev; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 TYPE_1__* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, int change)
{
	struct net_device *real_dev = FUNC2(dev)->real_dev;

	if (change & IFF_ALLMULTI)
		FUNC0(real_dev, dev->flags & IFF_ALLMULTI ? 1 : -1);
	if (change & IFF_PROMISC)
		FUNC1(real_dev, dev->flags & IFF_PROMISC ? 1 : -1);
}