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
struct platform_device {int num_resources; TYPE_1__* resource; int /*<<< orphan*/  dev; } ;
struct hc_driver {int dummy; } ;
struct TYPE_2__ {scalar_t__ flags; scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ IORESOURCE_IRQ ; 
 scalar_t__ IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  fclk ; 
 int /*<<< orphan*/  hcd_name ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  hclk ; 
 int /*<<< orphan*/  iclk ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct usb_hcd*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC13 (struct hc_driver const*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC15(const struct hc_driver *driver,
			struct platform_device *pdev)
{
	int retval;
	struct usb_hcd *hcd = NULL;

	if (pdev->num_resources != 2) {
		FUNC9("hcd probe: invalid num_resources");
		return -ENODEV;
	}

	if ((pdev->resource[0].flags != IORESOURCE_MEM)
			|| (pdev->resource[1].flags != IORESOURCE_IRQ)) {
		FUNC9("hcd probe: invalid resource type\n");
		return -ENODEV;
	}

	hcd = FUNC13(driver, &pdev->dev, "at91");
	if (!hcd)
		return -ENOMEM;
	hcd->rsrc_start = pdev->resource[0].start;
	hcd->rsrc_len = pdev->resource[0].end - pdev->resource[0].start + 1;

	if (!FUNC11(hcd->rsrc_start, hcd->rsrc_len, hcd_name)) {
		FUNC9("request_mem_region failed\n");
		retval = -EBUSY;
		goto err1;
	}

	hcd->regs = FUNC6(hcd->rsrc_start, hcd->rsrc_len);
	if (!hcd->regs) {
		FUNC9("ioremap failed\n");
		retval = -EIO;
		goto err2;
	}

	iclk = FUNC2(&pdev->dev, "ohci_clk");
	fclk = FUNC2(&pdev->dev, "uhpck");
	if (FUNC4())
		hclk = FUNC2(&pdev->dev, "hck0");

	FUNC0(pdev);
	FUNC8(FUNC5(hcd));

	retval = FUNC12(hcd, pdev->resource[1].start, IRQF_SHARED);
	if (retval == 0)
		return retval;

	/* Error handling */
	FUNC1(pdev);

	if (FUNC4())
		FUNC3(hclk);
	FUNC3(fclk);
	FUNC3(iclk);

	FUNC7(hcd->regs);

 err2:
	FUNC10(hcd->rsrc_start, hcd->rsrc_len);

 err1:
	FUNC14(hcd);
	return retval;
}