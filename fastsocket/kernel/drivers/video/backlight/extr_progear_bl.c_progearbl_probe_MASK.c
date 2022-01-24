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
typedef  int u8 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {void* max_brightness; void* brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 void* HW_LEVEL_MAX ; 
 void* HW_LEVEL_MIN ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_AL_M1533 ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_AL_M7101 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_AL ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  SB_MPS1 ; 
 struct backlight_device* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct backlight_device*) ; 
 void* pmu_dev ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  progearbl_ops ; 
 int /*<<< orphan*/  FUNC9 (struct backlight_device*) ; 
 void* sb_dev ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	u8 temp;
	struct backlight_device *progear_backlight_device;

	pmu_dev = FUNC4(PCI_VENDOR_ID_AL, PCI_DEVICE_ID_AL_M7101, NULL);
	if (!pmu_dev) {
		FUNC8("ALI M7101 PMU not found.\n");
		return -ENODEV;
	}

	sb_dev = FUNC4(PCI_VENDOR_ID_AL, PCI_DEVICE_ID_AL_M1533, NULL);
	if (!sb_dev) {
		FUNC8("ALI 1533 SB not found.\n");
		FUNC3(pmu_dev);
		return -ENODEV;
	}

	/*     Set SB_MPS1 to enable brightness control. */
	FUNC5(sb_dev, SB_MPS1, &temp);
	FUNC6(sb_dev, SB_MPS1, temp | 0x20);

	progear_backlight_device = FUNC2("progear-bl",
							     &pdev->dev, NULL,
							     &progearbl_ops);
	if (FUNC0(progear_backlight_device))
		return FUNC1(progear_backlight_device);

	FUNC7(pdev, progear_backlight_device);

	progear_backlight_device->props.power = FB_BLANK_UNBLANK;
	progear_backlight_device->props.brightness = HW_LEVEL_MAX - HW_LEVEL_MIN;
	progear_backlight_device->props.max_brightness = HW_LEVEL_MAX - HW_LEVEL_MIN;
	FUNC9(progear_backlight_device);

	return 0;
}