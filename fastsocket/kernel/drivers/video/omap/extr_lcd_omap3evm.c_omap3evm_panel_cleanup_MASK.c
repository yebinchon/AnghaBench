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
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_PANEL_INI ; 
 int /*<<< orphan*/  LCD_PANEL_LR ; 
 int /*<<< orphan*/  LCD_PANEL_QVGA ; 
 int /*<<< orphan*/  LCD_PANEL_RESB ; 
 int /*<<< orphan*/  LCD_PANEL_UD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct lcd_panel *panel)
{
	FUNC0(LCD_PANEL_QVGA);
	FUNC0(LCD_PANEL_RESB);
	FUNC0(LCD_PANEL_INI);
	FUNC0(LCD_PANEL_UD);
	FUNC0(LCD_PANEL_LR);
}