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
struct twl4030_usb {int /*<<< orphan*/ * usb3v1; int /*<<< orphan*/ * usb1v5; int /*<<< orphan*/ * usb1v8; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROTECT_KEY ; 
 int /*<<< orphan*/  TWL4030_MODULE_PM_MASTER ; 
 int /*<<< orphan*/  TWL4030_MODULE_PM_RECEIVER ; 
 int /*<<< orphan*/  VUSB1V5_DEV_GRP ; 
 int /*<<< orphan*/  VUSB1V5_TYPE ; 
 int /*<<< orphan*/  VUSB1V8_DEV_GRP ; 
 int /*<<< orphan*/  VUSB1V8_TYPE ; 
 int /*<<< orphan*/  VUSB3V1_DEV_GRP ; 
 int /*<<< orphan*/  VUSB3V1_TYPE ; 
 int /*<<< orphan*/  VUSB_DEDICATED1 ; 
 int /*<<< orphan*/  VUSB_DEDICATED2 ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct twl4030_usb *twl)
{
	/* Enable writing to power configuration registers */
	FUNC3(TWL4030_MODULE_PM_MASTER, 0xC0, PROTECT_KEY);
	FUNC3(TWL4030_MODULE_PM_MASTER, 0x0C, PROTECT_KEY);

	/* put VUSB3V1 LDO in active state */
	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB_DEDICATED2);

	/* input to VUSB3V1 LDO is from VBAT, not VBUS */
	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0x14, VUSB_DEDICATED1);

	/* Initialize 3.1V regulator */
	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB3V1_DEV_GRP);

	twl->usb3v1 = FUNC1(twl->dev, "usb3v1");
	if (FUNC0(twl->usb3v1))
		return -ENODEV;

	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB3V1_TYPE);

	/* Initialize 1.5V regulator */
	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V5_DEV_GRP);

	twl->usb1v5 = FUNC1(twl->dev, "usb1v5");
	if (FUNC0(twl->usb1v5))
		goto fail1;

	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V5_TYPE);

	/* Initialize 1.8V regulator */
	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V8_DEV_GRP);

	twl->usb1v8 = FUNC1(twl->dev, "usb1v8");
	if (FUNC0(twl->usb1v8))
		goto fail2;

	FUNC3(TWL4030_MODULE_PM_RECEIVER, 0, VUSB1V8_TYPE);

	/* disable access to power configuration registers */
	FUNC3(TWL4030_MODULE_PM_MASTER, 0, PROTECT_KEY);

	return 0;

fail2:
	FUNC2(twl->usb1v5);
	twl->usb1v5 = NULL;
fail1:
	FUNC2(twl->usb3v1);
	twl->usb3v1 = NULL;
	return -ENODEV;
}