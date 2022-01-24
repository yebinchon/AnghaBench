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
 int /*<<< orphan*/  LCD_PANEL_INI ; 
 int /*<<< orphan*/  LCD_PANEL_LR ; 
 int /*<<< orphan*/  LCD_PANEL_QVGA ; 
 int /*<<< orphan*/  LCD_PANEL_RESB ; 
 int /*<<< orphan*/  LCD_PANEL_UD ; 
 int /*<<< orphan*/  TWL4030_MODULE_LED ; 
 int /*<<< orphan*/  TWL4030_MODULE_PWMA ; 
 int /*<<< orphan*/  TWL_LED_LEDEN ; 
 int /*<<< orphan*/  TWL_PWMA_PWMAOFF ; 
 int /*<<< orphan*/  TWL_PWMA_PWMAON ; 
 int bklight_level ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct lcd_panel *panel,
				struct omapfb_device *fbdev)
{
	FUNC1(LCD_PANEL_LR, "LCD lr");
	FUNC1(LCD_PANEL_UD, "LCD ud");
	FUNC1(LCD_PANEL_INI, "LCD ini");
	FUNC1(LCD_PANEL_RESB, "LCD resb");
	FUNC1(LCD_PANEL_QVGA, "LCD qvga");

	FUNC0(LCD_PANEL_RESB, 1);
	FUNC0(LCD_PANEL_INI, 1);
	FUNC0(LCD_PANEL_QVGA, 0);
	FUNC0(LCD_PANEL_LR, 1);
	FUNC0(LCD_PANEL_UD, 1);

	FUNC2(TWL4030_MODULE_LED, 0x11, TWL_LED_LEDEN);
	FUNC2(TWL4030_MODULE_PWMA, 0x01, TWL_PWMA_PWMAON);
	FUNC2(TWL4030_MODULE_PWMA, 0x02, TWL_PWMA_PWMAOFF);
	bklight_level = 100;

	return 0;
}