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
 int /*<<< orphan*/  GP_ENABLE ; 
 int /*<<< orphan*/  RFPinsOutput ; 
 int /*<<< orphan*/  RFPinsSelect ; 
 int SW_CONTROL_GPIO ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	FUNC4(dev, RFPinsOutput, 0x480);

	FUNC2(dev);

	FUNC4(dev, RFPinsSelect, 0x88 | SW_CONTROL_GPIO);

	FUNC3(dev, GP_ENABLE, 0);

	FUNC0(dev);
	FUNC1(200);

	/* bit 6 is for RF on/off detection */
	FUNC4(dev, GP_ENABLE, 0xff & (~(1 << 6)));
}