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
struct usb_hcd {int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; int /*<<< orphan*/  regs; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fclk ; 
 int /*<<< orphan*/ * hclk ; 
 int /*<<< orphan*/ * iclk ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC8(struct usb_hcd *hcd,
				struct platform_device *pdev)
{
	FUNC7(hcd);
	FUNC0(pdev);
	FUNC4(hcd->regs);
	FUNC5(hcd->rsrc_start, hcd->rsrc_len);
	FUNC6(hcd);

	if (FUNC2())
		FUNC1(hclk);
	FUNC1(fclk);
	FUNC1(iclk);
	fclk = iclk = hclk = NULL;

	FUNC3(&pdev->dev, NULL);
}