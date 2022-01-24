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
struct net_device {scalar_t__ reg_state; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ NETREG_UNINITIALIZED ; 
 int /*<<< orphan*/  __LINK_STATE_NOCARRIER ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct net_device *dev)
{
	if (!FUNC1(__LINK_STATE_NOCARRIER, &dev->state)) {
		if (dev->reg_state == NETREG_UNINITIALIZED)
			return;
		FUNC0(dev);
	}
}