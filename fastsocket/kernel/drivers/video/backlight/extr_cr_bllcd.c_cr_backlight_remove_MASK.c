#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct cr_panel {int /*<<< orphan*/  cr_lcd_device; TYPE_2__* cr_backlight_device; } ;
struct TYPE_4__ {scalar_t__ max_brightness; scalar_t__ brightness; int /*<<< orphan*/  power; } ;
struct TYPE_5__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpc_dev ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct cr_panel* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct cr_panel *crp = FUNC5(pdev);
	crp->cr_backlight_device->props.power = FB_BLANK_POWERDOWN;
	crp->cr_backlight_device->props.brightness = 0;
	crp->cr_backlight_device->props.max_brightness = 0;
	FUNC1(crp->cr_backlight_device);
	FUNC2(crp->cr_lcd_device, FB_BLANK_POWERDOWN);
	FUNC0(crp->cr_backlight_device);
	FUNC3(crp->cr_lcd_device);
	FUNC4(lpc_dev);

	return 0;
}