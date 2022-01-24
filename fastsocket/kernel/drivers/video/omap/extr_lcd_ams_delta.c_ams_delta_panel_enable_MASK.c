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
 int AMS_DELTA_DEFAULT_CONTRAST ; 
 int /*<<< orphan*/  AMS_DELTA_LATCH2_LCD_NDISP ; 
 int /*<<< orphan*/  AMS_DELTA_LATCH2_LCD_VBLEN ; 
 int /*<<< orphan*/  OMAP_PWL_CLK_ENABLE ; 
 int /*<<< orphan*/  OMAP_PWL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct lcd_panel *panel)
{
	FUNC0(AMS_DELTA_LATCH2_LCD_NDISP,
			AMS_DELTA_LATCH2_LCD_NDISP);
	FUNC0(AMS_DELTA_LATCH2_LCD_VBLEN,
			AMS_DELTA_LATCH2_LCD_VBLEN);

	FUNC1(1, OMAP_PWL_CLK_ENABLE);
	FUNC1(AMS_DELTA_DEFAULT_CONTRAST, OMAP_PWL_ENABLE);

	return 0;
}