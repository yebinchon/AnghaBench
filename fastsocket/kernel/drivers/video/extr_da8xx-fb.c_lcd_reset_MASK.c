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
struct da8xx_fb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_DMA_CTRL_REG ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int LCD_RASTER_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct da8xx_fb_par*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct da8xx_fb_par *par)
{
	/* Disable the Raster if previously Enabled */
	if (FUNC1(LCD_RASTER_CTRL_REG) & LCD_RASTER_ENABLE)
		FUNC0(par);

	/* DMA has to be disabled */
	FUNC2(0, LCD_DMA_CTRL_REG);
	FUNC2(0, LCD_RASTER_CTRL_REG);
}