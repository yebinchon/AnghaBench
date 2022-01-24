#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * private_data; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SACR0 ; 
 scalar_t__ SACR0_RST ; 
 int SACR1 ; 
 int SACR1_DREC ; 
 int SACR1_DRPL ; 
 int SAIMR ; 
 int SAIMR_RFS ; 
 int SAIMR_TFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  clk_i2s ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pxa_i2s_dai ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	int ret;

	clk_i2s = FUNC2(&dev->dev, "I2SCLK");
	if (FUNC0(clk_i2s))
		return FUNC1(clk_i2s);

	pxa_i2s_dai.dev = &dev->dev;
	pxa_i2s_dai.private_data = NULL;
	ret = FUNC4(&pxa_i2s_dai);
	if (ret != 0)
		FUNC3(clk_i2s);

	/*
	 * PXA Developer's Manual:
	 * If SACR0[ENB] is toggled in the middle of a normal operation,
	 * the SACR0[RST] bit must also be set and cleared to reset all
	 * I2S controller registers.
	 */
	SACR0 = SACR0_RST;
	SACR0 = 0;
	/* Make sure RPL and REC are disabled */
	SACR1 = SACR1_DRPL | SACR1_DREC;
	/* Along with FIFO servicing */
	SAIMR &= ~(SAIMR_RFS | SAIMR_TFS);

	return ret;
}