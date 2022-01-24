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
struct vme_bridge {int /*<<< orphan*/  num; struct device* dev; int /*<<< orphan*/  parent; } ;
struct device {struct vme_bridge* platform_data; int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int VME_SLOTS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  vme_bus_type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6 (struct vme_bridge *bridge)
{
	struct device *dev;
	int retval;
	int i;

	bridge->num = FUNC4();

	/* This creates 32 vme "slot" devices. This equates to a slot for each
	 * ID available in a system conforming to the ANSI/VITA 1-1994
	 * specification.
	 */
	for (i = 0; i < VME_SLOTS_MAX; i++) {
		dev = &(bridge->dev[i]);
		FUNC3(dev, 0, sizeof(struct device));

		dev->parent = bridge->parent;
		dev->bus = &(vme_bus_type);
		/*
		 * We save a pointer to the bridge in platform_data so that we
		 * can get to it later. We keep driver_data for use by the
		 * driver that binds against the slot
		 */
		dev->platform_data = bridge;
		FUNC0(dev, "vme-%x.%x", bridge->num, i + 1);

		retval = FUNC1(dev);
		if(retval)
			goto err_reg;
	}

	return retval;

	i = VME_SLOTS_MAX;
err_reg:
	while (i > -1) {
		dev = &(bridge->dev[i]);
		FUNC2(dev);
	}
	FUNC5(bridge->num);
	return retval;
}