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
struct usb_hcd {scalar_t__ rsrc_len; scalar_t__ rsrc_start; } ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  SM501_GATE_USB_HOST ; 
 int /*<<< orphan*/  SM501_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct usb_hcd* FUNC1 (struct platform_device*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC1(pdev);
	struct resource	*mem;

	FUNC8(hcd);
	FUNC4(hcd->rsrc_start, hcd->rsrc_len);
	FUNC7(hcd);
	FUNC0(&pdev->dev);
	mem = FUNC2(pdev, IORESOURCE_MEM, 1);
	if (mem)
		FUNC4(mem->start, mem->end - mem->start + 1);

	/* mask interrupts and disable power */

	FUNC5(pdev->dev.parent, SM501_IRQ_MASK, 0, 1 << 6);
	FUNC6(pdev->dev.parent, SM501_GATE_USB_HOST, 0);

	FUNC3(pdev, NULL);
	return 0;
}