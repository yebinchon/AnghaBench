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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  RTL8225z2_ANAPARAM2_OFF ; 
 int /*<<< orphan*/  RTL8225z2_ANAPARAM_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 

void FUNC5(struct net_device *dev)
{
	FUNC0(dev, 0x4, 0x1f);

	FUNC1(dev);
	FUNC2(1);

	FUNC3(dev, RTL8225z2_ANAPARAM_OFF);
	FUNC4(dev, RTL8225z2_ANAPARAM2_OFF);
}