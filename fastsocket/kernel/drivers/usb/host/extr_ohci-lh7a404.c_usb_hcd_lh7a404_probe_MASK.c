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
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/  regs; } ;
struct platform_device {TYPE_1__* resource; int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 scalar_t__ IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_hcd*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC10 (struct hc_driver const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*) ; 

int FUNC12 (const struct hc_driver *driver,
			  struct platform_device *dev)
{
	int retval;
	struct usb_hcd *hcd;

	if (dev->resource[1].flags != IORESOURCE_IRQ) {
		FUNC6("resource[1] is not IORESOURCE_IRQ");
		return -ENOMEM;
	}

	hcd = FUNC10(driver, &dev->dev, "lh7a404");
	if (!hcd)
		return -ENOMEM;
	hcd->rsrc_start = dev->resource[0].start;
	hcd->rsrc_len = dev->resource[0].end - dev->resource[0].start + 1;

	if (!FUNC8(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC6("request_mem_region failed");
		retval = -EBUSY;
		goto err1;
	}

	hcd->regs = FUNC1(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC6("ioremap failed");
		retval = -ENOMEM;
		goto err2;
	}

	FUNC3(dev);
	FUNC5(FUNC0(hcd));

	retval = FUNC9(hcd, dev->resource[1].start, IRQF_DISABLED);
	if (retval == 0)
		return retval;

	FUNC4(dev);
	FUNC2(hcd->regs);
 err2:
	FUNC7(hcd->rsrc_start, hcd->rsrc_len);
 err1:
	FUNC11(hcd);
	return retval;
}