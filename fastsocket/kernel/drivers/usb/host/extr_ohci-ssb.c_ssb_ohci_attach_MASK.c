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
typedef  int /*<<< orphan*/  u32 ;
struct usb_hcd {int /*<<< orphan*/  regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct ssb_ohci_device {int /*<<< orphan*/  enable_flags; } ;
struct TYPE_2__ {scalar_t__ coreid; } ;
struct ssb_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; TYPE_1__ id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  SSB_ADMATCH0 ; 
 scalar_t__ SSB_DEV_USB11_HOSTDEV ; 
 int /*<<< orphan*/  SSB_OHCI_TMSLOW_HOSTMODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ssb_ohci_device* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssb_ohci_hc_driver ; 
 int /*<<< orphan*/  FUNC8 (struct ssb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ssb_device*,struct usb_hcd*) ; 
 int FUNC10 (struct usb_hcd*,int /*<<< orphan*/ ,int) ; 
 struct usb_hcd* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC13(struct ssb_device *dev)
{
	struct ssb_ohci_device *ohcidev;
	struct usb_hcd *hcd;
	int err = -ENOMEM;
	u32 tmp, flags = 0;

	if (dev->id.coreid == SSB_DEV_USB11_HOSTDEV)
		flags |= SSB_OHCI_TMSLOW_HOSTMODE;

	FUNC7(dev, flags);

	hcd = FUNC11(&ssb_ohci_hc_driver, dev->dev,
			FUNC0(dev->dev));
	if (!hcd)
		goto err_dev_disable;
	ohcidev = FUNC1(hcd);
	ohcidev->enable_flags = flags;

	tmp = FUNC8(dev, SSB_ADMATCH0);
	hcd->rsrc_start = FUNC4(tmp);
	hcd->rsrc_len = FUNC5(tmp);
	hcd->regs = FUNC2(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs)
		goto err_put_hcd;
	err = FUNC10(hcd, dev->irq, IRQF_DISABLED | IRQF_SHARED);
	if (err)
		goto err_iounmap;

	FUNC9(dev, hcd);

	return err;

err_iounmap:
	FUNC3(hcd->regs);
err_put_hcd:
	FUNC12(hcd);
err_dev_disable:
	FUNC6(dev, flags);
	return err;
}