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
struct TYPE_3__ {struct fsl_usb2_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_usb2_platform_data {scalar_t__ phy_mode; } ;

/* Variables and functions */
 scalar_t__ FSL_USB2_PHY_ULPI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,char*) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/ * mxc_ahb_clk ; 
 int /*<<< orphan*/ * mxc_usb_clk ; 

int FUNC8(struct platform_device *pdev)
{
	struct fsl_usb2_platform_data *pdata;
	unsigned long freq;
	int ret;

	pdata = pdev->dev.platform_data;

	mxc_ahb_clk = FUNC4(&pdev->dev, "usb_ahb");
	if (FUNC0(mxc_ahb_clk))
		return FUNC1(mxc_ahb_clk);

	ret = FUNC3(mxc_ahb_clk);
	if (ret < 0) {
		FUNC7(&pdev->dev, "clk_enable(\"usb_ahb\") failed\n");
		goto eenahb;
	}

	/* make sure USB_CLK is running at 60 MHz +/- 1000 Hz */
	mxc_usb_clk = FUNC4(&pdev->dev, "usb");
	if (FUNC0(mxc_usb_clk)) {
		FUNC7(&pdev->dev, "clk_get(\"usb\") failed\n");
		ret = FUNC1(mxc_usb_clk);
		goto egusb;
	}

	freq = FUNC5(mxc_usb_clk);
	if (pdata->phy_mode != FSL_USB2_PHY_ULPI &&
	    (freq < 59999000 || freq > 60001000)) {
		FUNC7(&pdev->dev, "USB_CLK=%lu, should be 60MHz\n", freq);
		goto eclkrate;
	}

	ret = FUNC3(mxc_usb_clk);
	if (ret < 0) {
		FUNC7(&pdev->dev, "clk_enable(\"usb_clk\") failed\n");
		goto eenusb;
	}

	return 0;

eenusb:
eclkrate:
	FUNC6(mxc_usb_clk);
	mxc_usb_clk = NULL;
egusb:
	FUNC2(mxc_ahb_clk);
eenahb:
	FUNC6(mxc_ahb_clk);
	return ret;
}