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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ohci_lh7a404_hc_driver ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	int ret;

	FUNC0 ("In ohci_hcd_lh7a404_drv_probe");

	if (FUNC1())
		return -ENODEV;

	ret = FUNC2(&ohci_lh7a404_hc_driver, pdev);
	return ret;
}