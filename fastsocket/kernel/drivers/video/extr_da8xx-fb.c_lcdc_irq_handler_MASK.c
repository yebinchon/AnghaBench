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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int LCD_FIFO_UNDERFLOW ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int LCD_RASTER_ENABLE ; 
 int /*<<< orphan*/  LCD_STAT_REG ; 
 int LCD_SYNC_LOST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *arg)
{
	u32 stat = FUNC0(LCD_STAT_REG);
	u32 reg;

	if ((stat & LCD_SYNC_LOST) && (stat & LCD_FIFO_UNDERFLOW)) {
		reg = FUNC0(LCD_RASTER_CTRL_REG);
		FUNC1(reg & ~LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
		FUNC1(stat, LCD_STAT_REG);
		FUNC1(reg | LCD_RASTER_ENABLE, LCD_RASTER_CTRL_REG);
	} else
		FUNC1(stat, LCD_STAT_REG);

	return IRQ_HANDLED;
}