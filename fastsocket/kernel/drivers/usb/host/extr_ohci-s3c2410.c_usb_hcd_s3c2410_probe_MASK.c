#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; int /*<<< orphan*/  regs; } ;
struct TYPE_6__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {TYPE_1__* resource; TYPE_2__ dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clk ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (struct usb_hcd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_clk ; 
 struct usb_hcd* FUNC14 (struct hc_driver const*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC16 (const struct hc_driver *driver,
				  struct platform_device *dev)
{
	struct usb_hcd *hcd = NULL;
	int retval;

	FUNC12(dev->dev.platform_data, 1, 1);
	FUNC12(dev->dev.platform_data, 2, 1);

	hcd = FUNC14(driver, &dev->dev, "s3c24xx");
	if (hcd == NULL)
		return -ENOMEM;

	hcd->rsrc_start = dev->resource[0].start;
	hcd->rsrc_len   = dev->resource[0].end - dev->resource[0].start + 1;

	if (!FUNC9(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC3(&dev->dev, "request_mem_region failed\n");
		retval = -EBUSY;
		goto err_put;
	}

	clk = FUNC1(&dev->dev, "usb-host");
	if (FUNC0(clk)) {
		FUNC3(&dev->dev, "cannot get usb-host clock\n");
		retval = -ENOENT;
		goto err_mem;
	}

	usb_clk = FUNC1(&dev->dev, "usb-bus-host");
	if (FUNC0(usb_clk)) {
		FUNC3(&dev->dev, "cannot get usb-bus-host clock\n");
		retval = -ENOENT;
		goto err_clk;
	}

	FUNC10(dev, hcd);

	hcd->regs = FUNC5(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC3(&dev->dev, "ioremap failed\n");
		retval = -ENOMEM;
		goto err_ioremap;
	}

	FUNC7(FUNC4(hcd));

	retval = FUNC13(hcd, dev->resource[1].start, IRQF_DISABLED);
	if (retval != 0)
		goto err_ioremap;

	return 0;

 err_ioremap:
	FUNC11(dev);
	FUNC6(hcd->regs);
	FUNC2(usb_clk);

 err_clk:
	FUNC2(clk);

 err_mem:
	FUNC8(hcd->rsrc_start, hcd->rsrc_len);

 err_put:
	FUNC15(hcd);
	return retval;
}