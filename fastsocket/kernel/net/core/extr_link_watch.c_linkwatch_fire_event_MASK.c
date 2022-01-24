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
struct net_device {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __LINK_STATE_LINKWATCH_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct net_device *dev)
{
	bool urgent = FUNC3(dev);

	if (!FUNC4(__LINK_STATE_LINKWATCH_PENDING, &dev->state)) {
		FUNC0(dev);

		FUNC1(dev);
	} else if (!urgent)
		return;

	FUNC2(urgent);
}