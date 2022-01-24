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
struct usb_hcd {int rsrc_start; int rsrc_len; int /*<<< orphan*/ * regs; } ;
struct resource {int start; int end; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hc_driver {int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hc_driver ixp4xx_ehci_hc_driver ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC9 (struct hc_driver const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct usb_hcd *hcd;
	const struct hc_driver *driver = &ixp4xx_ehci_hc_driver;
	struct resource *res;
	int irq;
	int retval;

	if (FUNC10())
		return -ENODEV;

	res = FUNC5(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC1(&pdev->dev,
			"Found HC with no IRQ. Check %s setup!\n",
			FUNC2(&pdev->dev));
		return -ENODEV;
	}
	irq = res->start;

	hcd = FUNC9(driver, &pdev->dev, FUNC2(&pdev->dev));
	if (!hcd) {
		retval = -ENOMEM;
		goto fail_create_hcd;
	}

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC1(&pdev->dev,
			"Found HC with no register addr. Check %s setup!\n",
			FUNC2(&pdev->dev));
		retval = -ENODEV;
		goto fail_request_resource;
	}
	hcd->rsrc_start = res->start;
	hcd->rsrc_len = res->end - res->start + 1;

	if (!FUNC7(hcd->rsrc_start, hcd->rsrc_len,
				driver->description)) {
		FUNC0(&pdev->dev, "controller already in use\n");
		retval = -EBUSY;
		goto fail_request_resource;
	}

	hcd->regs = FUNC3(hcd->rsrc_start, hcd->rsrc_len);
	if (hcd->regs == NULL) {
		FUNC0(&pdev->dev, "error mapping memory\n");
		retval = -EFAULT;
		goto fail_ioremap;
	}

	retval = FUNC8(hcd, irq, IRQF_SHARED);
	if (retval)
		goto fail_add_hcd;

	return retval;

fail_add_hcd:
	FUNC4(hcd->regs);
fail_ioremap:
	FUNC6(hcd->rsrc_start, hcd->rsrc_len);
fail_request_resource:
	FUNC11(hcd);
fail_create_hcd:
	FUNC1(&pdev->dev, "init %s fail, %d\n", FUNC2(&pdev->dev), retval);
	return retval;
}