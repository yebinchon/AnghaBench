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
struct net_device {unsigned char operstate; int link_mode; } ;

/* Variables and functions */
#define  IF_LINK_MODE_DEFAULT 129 
#define  IF_LINK_MODE_DORMANT 128 
 unsigned char IF_OPER_DORMANT ; 
 unsigned char IF_OPER_UP ; 
 unsigned char FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  dev_base_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	unsigned char operstate = FUNC0(dev);

	if (operstate == dev->operstate)
		return;

	FUNC1(&dev_base_lock);

	switch(dev->link_mode) {
	case IF_LINK_MODE_DORMANT:
		if (operstate == IF_OPER_UP)
			operstate = IF_OPER_DORMANT;
		break;

	case IF_LINK_MODE_DEFAULT:
	default:
		break;
	}

	dev->operstate = operstate;

	FUNC2(&dev_base_lock);
}