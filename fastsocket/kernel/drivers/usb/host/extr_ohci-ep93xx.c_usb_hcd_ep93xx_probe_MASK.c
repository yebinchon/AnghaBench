#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/ * regs; } ;
struct platform_device {int /*<<< orphan*/  dev; TYPE_1__* resource; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 scalar_t__ IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usb_hcd*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC13 (struct hc_driver const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  usb_host_clock ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC15(const struct hc_driver *driver,
			 struct platform_device *pdev)
{
	int retval;
	struct usb_hcd *hcd;

	if (pdev->resource[1].flags != IORESOURCE_IRQ) {
		FUNC3("resource[1] is not IORESOURCE_IRQ");
		return -ENOMEM;
	}

	hcd = FUNC13(driver, &pdev->dev, "ep93xx");
	if (hcd == NULL)
		return -ENOMEM;

	hcd->rsrc_start = pdev->resource[0].start;
	hcd->rsrc_len = pdev->resource[0].end - pdev->resource[0].start + 1;
	if (!FUNC11(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC14(hcd);
		retval = -EBUSY;
		goto err1;
	}

	hcd->regs = FUNC7(hcd->rsrc_start, hcd->rsrc_len);
	if (hcd->regs == NULL) {
		FUNC3("ioremap failed");
		retval = -ENOMEM;
		goto err2;
	}

	usb_host_clock = FUNC2(&pdev->dev, NULL);
	if (FUNC0(usb_host_clock)) {
		FUNC3("clk_get failed");
		retval = FUNC1(usb_host_clock);
		goto err3;
	}

	FUNC4(&pdev->dev);

	FUNC9(FUNC6(hcd));

	retval = FUNC12(hcd, pdev->resource[1].start, IRQF_DISABLED);
	if (retval == 0)
		return retval;

	FUNC5(&pdev->dev);
err3:
	FUNC8(hcd->regs);
err2:
	FUNC10(hcd->rsrc_start, hcd->rsrc_len);
err1:
	FUNC14(hcd);

	return retval;
}