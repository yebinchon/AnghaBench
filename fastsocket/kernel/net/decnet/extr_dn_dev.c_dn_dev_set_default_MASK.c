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
struct net_device {int /*<<< orphan*/  dn_ptr; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 struct net_device* decnet_default_device ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  dndev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct net_device *dev, int force)
{
	struct net_device *old = NULL;
	int rv = -EBUSY;
	if (!dev->dn_ptr)
		return -ENODEV;
	FUNC1(&dndev_lock);
	if (force || decnet_default_device == NULL) {
		old = decnet_default_device;
		decnet_default_device = dev;
		rv = 0;
	}
	FUNC2(&dndev_lock);
	if (old)
		FUNC0(old);
	return rv;
}