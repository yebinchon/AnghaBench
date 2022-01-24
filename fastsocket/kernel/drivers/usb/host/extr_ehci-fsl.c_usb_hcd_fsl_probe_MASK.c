#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int rsrc_start; int rsrc_len; int /*<<< orphan*/ * regs; } ;
struct resource {int start; int end; } ;
struct TYPE_5__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hc_driver {int /*<<< orphan*/  description; } ;
struct fsl_usb2_platform_data {scalar_t__ operating_mode; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FSL_USB2_DR_HOST ; 
 scalar_t__ FSL_USB2_DR_OTG ; 
 scalar_t__ FSL_USB2_MPH_HOST ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct usb_hcd*,int,int) ; 
 struct usb_hcd* FUNC14 (struct hc_driver const*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*) ; 

int FUNC16(const struct hc_driver *driver,
		      struct platform_device *pdev)
{
	struct fsl_usb2_platform_data *pdata;
	struct usb_hcd *hcd;
	struct resource *res;
	int irq;
	int retval;
	unsigned int temp;

	FUNC10("initializing FSL-SOC USB Controller\n");

	/* Need platform data for setup */
	pdata = (struct fsl_usb2_platform_data *)pdev->dev.platform_data;
	if (!pdata) {
		FUNC1(&pdev->dev,
			"No platform data for %s.\n", FUNC2(&pdev->dev));
		return -ENODEV;
	}

	/*
	 * This is a host mode driver, verify that we're supposed to be
	 * in host mode.
	 */
	if (!((pdata->operating_mode == FSL_USB2_DR_HOST) ||
	      (pdata->operating_mode == FSL_USB2_MPH_HOST) ||
	      (pdata->operating_mode == FSL_USB2_DR_OTG))) {
		FUNC1(&pdev->dev,
			"Non Host Mode configured for %s. Wrong driver linked.\n",
			FUNC2(&pdev->dev));
		return -ENODEV;
	}

	res = FUNC9(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC1(&pdev->dev,
			"Found HC with no IRQ. Check %s setup!\n",
			FUNC2(&pdev->dev));
		return -ENODEV;
	}
	irq = res->start;

	hcd = FUNC14(driver, &pdev->dev, FUNC2(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto err1;
	}

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC1(&pdev->dev,
			"Found HC with no register addr. Check %s setup!\n",
			FUNC2(&pdev->dev));
		retval = -ENODEV;
		goto err2;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = res->end - res->start + 1;
	if (!FUNC12(hcd->rsrc_start, hcd->rsrc_len,
				driver->description)) {
		FUNC0(&pdev->dev, "controller already in use\n");
		retval = -EBUSY;
		goto err2;
	}
	hcd->regs = FUNC5(hcd->rsrc_start, hcd->rsrc_len);

	if (hcd->regs == NULL) {
		FUNC0(&pdev->dev, "error mapping memory\n");
		retval = -EFAULT;
		goto err3;
	}

	/* Enable USB controller */
	temp = FUNC3(hcd->regs + 0x500);
	FUNC7(hcd->regs + 0x500, temp | 0x4);

	/* Set to Host mode */
	temp = FUNC4(hcd->regs + 0x1a8);
	FUNC8(hcd->regs + 0x1a8, temp | 0x3);

	retval = FUNC13(hcd, irq, IRQF_DISABLED | IRQF_SHARED);
	if (retval != 0)
		goto err4;
	return retval;

      err4:
	FUNC6(hcd->regs);
      err3:
	FUNC11(hcd->rsrc_start, hcd->rsrc_len);
      err2:
	FUNC15(hcd);
      err1:
	FUNC1(&pdev->dev, "init %s fail, %d\n", FUNC2(&pdev->dev), retval);
	return retval;
}