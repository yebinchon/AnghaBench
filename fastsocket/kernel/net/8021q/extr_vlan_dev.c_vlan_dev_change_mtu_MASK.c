#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mtu; } ;
struct TYPE_4__ {TYPE_1__* real_dev; } ;
struct TYPE_3__ {int mtu; } ;

/* Variables and functions */
 int ERANGE ; 
 TYPE_2__* FUNC0 (struct net_device*) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev, int new_mtu)
{
	/* TODO: gotta make sure the underlying layer can handle it,
	 * maybe an IFF_VLAN_CAPABLE flag for devices?
	 */
	if (FUNC0(dev)->real_dev->mtu < new_mtu)
		return -ERANGE;

	dev->mtu = new_mtu;

	return 0;
}