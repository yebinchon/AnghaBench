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
struct usb_hcd {int dummy; } ;
struct s3c2410_hcd_info {int /*<<< orphan*/  (* enable_oc ) (struct s3c2410_hcd_info*,int) ;int /*<<< orphan*/  report_oc; struct usb_hcd* hcd; } ;
struct TYPE_2__ {struct s3c2410_hcd_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  clk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  s3c2410_hcd_oc ; 
 int /*<<< orphan*/  FUNC3 (struct s3c2410_hcd_info*,int) ; 
 int /*<<< orphan*/  usb_clk ; 

__attribute__((used)) static void FUNC4(struct platform_device *dev, struct usb_hcd *hcd)
{
	struct s3c2410_hcd_info *info = dev->dev.platform_data;

	FUNC1(&dev->dev, "s3c2410_start_hc:\n");

	FUNC0(usb_clk);
	FUNC2(2);			/* let the bus clock stabilise */

	FUNC0(clk);

	if (info != NULL) {
		info->hcd	= hcd;
		info->report_oc = s3c2410_hcd_oc;

		if (info->enable_oc != NULL) {
			(info->enable_oc)(info, 1);
		}
	}
}