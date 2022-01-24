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
struct omapfb_device {int dummy; } ;
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDP2430_LCD_PANEL_BACKLIGHT_GPIO ; 
 int /*<<< orphan*/  SDP2430_LCD_PANEL_ENABLE_GPIO ; 
 int /*<<< orphan*/  SDP3430_LCD_PANEL_BACKLIGHT_GPIO ; 
 int /*<<< orphan*/  SDP3430_LCD_PANEL_ENABLE_GPIO ; 
 int /*<<< orphan*/  backlight_gpio ; 
 int /*<<< orphan*/  enable_gpio ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct lcd_panel *panel,
				struct omapfb_device *fbdev)
{
	if (FUNC2()) {
		enable_gpio    = SDP3430_LCD_PANEL_ENABLE_GPIO;
		backlight_gpio = SDP3430_LCD_PANEL_BACKLIGHT_GPIO;
	} else {
		enable_gpio    = SDP2430_LCD_PANEL_ENABLE_GPIO;
		backlight_gpio = SDP2430_LCD_PANEL_BACKLIGHT_GPIO;
	}

	FUNC1(enable_gpio, "LCD enable");	/* LCD panel */
	FUNC1(backlight_gpio, "LCD bl");		/* LCD backlight */
	FUNC0(enable_gpio, 0);
	FUNC0(backlight_gpio, 0);

	return 0;
}