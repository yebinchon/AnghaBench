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
struct usb_hcd {unsigned long rsrc_start; int /*<<< orphan*/  irq; } ;
struct tmio_hcd {scalar_t__ ccr; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CCR_BASE ; 
 scalar_t__ CCR_ILME ; 
 scalar_t__ CCR_INTC ; 
 scalar_t__ CCR_REVID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct tmio_hcd* FUNC1 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dev)
{
	struct usb_hcd *hcd = FUNC2(dev);
	struct tmio_hcd *tmio = FUNC1(hcd);
	unsigned long base = hcd->rsrc_start;

	FUNC6(dev);
	FUNC4(base, tmio->ccr + CCR_BASE);
	FUNC4(base >> 16, tmio->ccr + CCR_BASE + 2);
	FUNC5(1, tmio->ccr + CCR_ILME);
	FUNC5(2, tmio->ccr + CCR_INTC);

	FUNC0(&dev->dev, "revision %d @ 0x%08llx, irq %d\n",
			FUNC3(tmio->ccr + CCR_REVID), hcd->rsrc_start, hcd->irq);
}