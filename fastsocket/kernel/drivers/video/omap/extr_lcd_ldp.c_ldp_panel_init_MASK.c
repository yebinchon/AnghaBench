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
 int /*<<< orphan*/  LCD_PANEL_BACKLIGHT_GPIO ; 
 int /*<<< orphan*/  LCD_PANEL_ENABLE_GPIO ; 
 int /*<<< orphan*/  LCD_PANEL_QVGA_GPIO ; 
 int /*<<< orphan*/  LCD_PANEL_RESET_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct lcd_panel *panel,
				struct omapfb_device *fbdev)
{
	FUNC1(LCD_PANEL_RESET_GPIO, "lcd reset");
	FUNC1(LCD_PANEL_QVGA_GPIO, "lcd qvga");
	FUNC1(LCD_PANEL_ENABLE_GPIO, "lcd panel");
	FUNC1(LCD_PANEL_BACKLIGHT_GPIO, "lcd backlight");

	FUNC0(LCD_PANEL_QVGA_GPIO, 0);
	FUNC0(LCD_PANEL_RESET_GPIO, 0);
	FUNC0(LCD_PANEL_ENABLE_GPIO, 0);
	FUNC0(LCD_PANEL_BACKLIGHT_GPIO, 0);

#ifdef CONFIG_FB_OMAP_LCD_VGA
	gpio_set_value(LCD_PANEL_QVGA_GPIO, 0);
#else
	FUNC2(LCD_PANEL_QVGA_GPIO, 1);
#endif
	FUNC2(LCD_PANEL_RESET_GPIO, 1);

	return 0;
}