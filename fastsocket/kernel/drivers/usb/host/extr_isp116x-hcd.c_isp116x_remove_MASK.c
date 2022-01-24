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
struct usb_hcd {int dummy; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct isp116x {int /*<<< orphan*/  addr_reg; int /*<<< orphan*/  data_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct isp116x* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isp116x*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC2(pdev);
	struct isp116x *isp116x;
	struct resource *res;

	if (!hcd)
		return 0;
	isp116x = FUNC0(hcd);
	FUNC5(isp116x);
	FUNC7(hcd);

	FUNC1(isp116x->data_reg);
	res = FUNC3(pdev, IORESOURCE_MEM, 1);
	FUNC4(res->start, 2);
	FUNC1(isp116x->addr_reg);
	res = FUNC3(pdev, IORESOURCE_MEM, 0);
	FUNC4(res->start, 2);

	FUNC6(hcd);
	return 0;
}