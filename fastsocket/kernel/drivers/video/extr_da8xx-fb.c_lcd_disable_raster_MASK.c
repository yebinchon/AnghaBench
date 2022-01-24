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
typedef  int u32 ;
struct da8xx_fb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int LCD_RASTER_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct da8xx_fb_par *par)
{
	u32 reg;

	reg = FUNC0(LCD_RASTER_CTRL_REG);
	if (reg & LCD_RASTER_ENABLE)
		FUNC1(reg & ~LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
}