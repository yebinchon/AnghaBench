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
struct TYPE_2__ {struct at91_usbh_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct at91_usbh_data {scalar_t__* vbus_pin; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct at91_usbh_data	*pdata = pdev->dev.platform_data;
	int			i;

	if (pdata) {
		for (i = 0; i < FUNC0(pdata->vbus_pin); i++) {
			if (pdata->vbus_pin[i] <= 0)
				continue;
			FUNC2(pdata->vbus_pin[i], 1);
			FUNC3(pdata->vbus_pin[i]);
		}
	}

	FUNC1(&pdev->dev, 0);
	FUNC5(FUNC4(pdev), pdev);
	return 0;
}