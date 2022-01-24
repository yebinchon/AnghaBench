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
struct vme_bridge {int /*<<< orphan*/  num; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int VME_SLOTS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (struct vme_bridge *bridge)
{
	int i;
	struct device *dev;


	for (i = 0; i < VME_SLOTS_MAX; i++) {
		dev = &(bridge->dev[i]);
		FUNC0(dev);
	}
	FUNC1(bridge->num);
}