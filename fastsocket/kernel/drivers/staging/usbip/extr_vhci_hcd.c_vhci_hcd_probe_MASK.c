#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int dummy; } ;
struct TYPE_4__ {scalar_t__ dma_mask; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (struct usb_hcd*) ; 
 int /*<<< orphan*/ * the_controller ; 
 int FUNC3 (struct usb_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  vhci_hc_driver ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct usb_hcd		*hcd;
	int			ret;

	FUNC8("proving...\n");

	FUNC6("name %s id %d\n", pdev->name, pdev->id);

	/* will be removed */
	if (pdev->dev.dma_mask) {
		FUNC0(&pdev->dev, "vhci_hcd DMA not supported\n");
		return -EINVAL;
	}

	/*
	 * Allocate and initialize hcd.
	 * Our private data is also allocated automatically.
	 */
	hcd = FUNC4(&vhci_hc_driver, &pdev->dev, FUNC1(&pdev->dev));
	if (!hcd) {
		FUNC7("create hcd failed\n");
		return -ENOMEM;
	}


	/* this is private data for vhci_hcd */
	the_controller = FUNC2(hcd);

	/*
	 * Finish generic HCD structure initialization and register.
	 * Call the driver's reset() and start() routines.
	 */
	ret = FUNC3(hcd, 0, 0);
	if (ret != 0) {
		FUNC7("usb_add_hcd failed %d\n", ret);
		FUNC5(hcd);
		the_controller = NULL;
		return ret;
	}


	FUNC6("bye\n");
	return 0;
}