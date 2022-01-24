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
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct sa1111_dev {int /*<<< orphan*/ * irq; int /*<<< orphan*/  mapbase; TYPE_1__ res; int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sa1111_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sa1111_dev*) ; 
 int FUNC7 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC8 (struct hc_driver const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hcd*) ; 

int FUNC10 (const struct hc_driver *driver,
			  struct sa1111_dev *dev)
{
	struct usb_hcd *hcd;
	int retval;

	hcd = FUNC8 (driver, &dev->dev, "sa1111");
	if (!hcd)
		return -ENOMEM;
	hcd->rsrc_start = dev->res.start;
	hcd->rsrc_len = dev->res.end - dev->res.start + 1;

	if (!FUNC4(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC0("request_mem_region failed");
		retval = -EBUSY;
		goto err1;
	}
	hcd->regs = dev->mapbase;

	FUNC5(dev);
	FUNC2(FUNC1(hcd));

	retval = FUNC7(hcd, dev->irq[1], IRQF_DISABLED);
	if (retval == 0)
		return retval;

	FUNC6(dev);
	FUNC3(hcd->rsrc_start, hcd->rsrc_len);
 err1:
	FUNC9(hcd);
	return retval;
}