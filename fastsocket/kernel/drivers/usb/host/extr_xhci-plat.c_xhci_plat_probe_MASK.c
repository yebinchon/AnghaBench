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
struct xhci_hcd {struct usb_hcd* shared_hcd; } ;
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; scalar_t__ hcd_priv; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hc_driver {int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct usb_hcd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xhci_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int FUNC11 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC12 (struct hc_driver const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC13 (struct hc_driver const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_hcd*) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_hcd*) ; 
 struct hc_driver xhci_plat_xhci_driver ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	const struct hc_driver	*driver;
	struct xhci_hcd		*xhci;
	struct resource         *res;
	struct usb_hcd		*hcd;
	int			ret;
	int			irq;

	if (FUNC14())
		return -ENODEV;

	driver = &xhci_plat_xhci_driver;

	irq = FUNC6(pdev, 0);
	if (irq < 0)
		return -ENODEV;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	hcd = FUNC12(driver, &pdev->dev, FUNC2(&pdev->dev));
	if (!hcd)
		return -ENOMEM;

	hcd->rsrc_start = res->start;
	hcd->rsrc_len = FUNC10(res);

	if (!FUNC9(hcd->rsrc_start, hcd->rsrc_len,
				driver->description)) {
		FUNC0(&pdev->dev, "controller already in use\n");
		ret = -EBUSY;
		goto put_hcd;
	}

	hcd->regs = FUNC4(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC0(&pdev->dev, "error mapping memory\n");
		ret = -EFAULT;
		goto release_mem_region;
	}

	ret = FUNC11(hcd, irq, IRQF_SHARED);
	if (ret)
		goto unmap_registers;

	/* USB 2.0 roothub is stored in the platform_device now. */
	hcd = FUNC1(&pdev->dev);
	xhci = FUNC3(hcd);
	xhci->shared_hcd = FUNC13(driver, &pdev->dev,
			FUNC2(&pdev->dev), hcd);
	if (!xhci->shared_hcd) {
		ret = -ENOMEM;
		goto dealloc_usb2_hcd;
	}

	/*
	 * Set the xHCI pointer before xhci_plat_setup() (aka hcd_driver.reset)
	 * is called by usb_add_hcd().
	 */
	*((struct xhci_hcd **) xhci->shared_hcd->hcd_priv) = xhci;

	ret = FUNC11(xhci->shared_hcd, irq, IRQF_SHARED);
	if (ret)
		goto put_usb3_hcd;

	return 0;

put_usb3_hcd:
	FUNC15(xhci->shared_hcd);

dealloc_usb2_hcd:
	FUNC16(hcd);

unmap_registers:
	FUNC5(hcd->regs);

release_mem_region:
	FUNC8(hcd->rsrc_start, hcd->rsrc_len);

put_hcd:
	FUNC15(hcd);

	return ret;
}