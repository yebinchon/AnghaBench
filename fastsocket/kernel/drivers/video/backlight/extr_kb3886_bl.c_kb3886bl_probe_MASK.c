#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct kb3886bl_machinfo* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct kb3886bl_machinfo {int limit_mask; int /*<<< orphan*/  default_intensity; int /*<<< orphan*/  max_intensity; } ;
struct TYPE_9__ {int /*<<< orphan*/  brightness; int /*<<< orphan*/  power; int /*<<< orphan*/  max_brightness; } ;
struct TYPE_10__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (char*,TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct kb3886bl_machinfo* bl_machinfo ; 
 TYPE_2__* kb3886_backlight_device ; 
 int /*<<< orphan*/  kb3886bl_ops ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct kb3886bl_machinfo *machinfo = pdev->dev.platform_data;

	bl_machinfo = machinfo;
	if (!machinfo->limit_mask)
		machinfo->limit_mask = -1;

	kb3886_backlight_device = FUNC2("kb3886-bl",
		&pdev->dev, NULL, &kb3886bl_ops);
	if (FUNC0(kb3886_backlight_device))
		return FUNC1(kb3886_backlight_device);

	FUNC4(pdev, kb3886_backlight_device);

	kb3886_backlight_device->props.max_brightness = machinfo->max_intensity;
	kb3886_backlight_device->props.power = FB_BLANK_UNBLANK;
	kb3886_backlight_device->props.brightness = machinfo->default_intensity;
	FUNC3(kb3886_backlight_device);

	return 0;
}