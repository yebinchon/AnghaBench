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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LCD_DMA_BURST_1 ; 
 int /*<<< orphan*/  LCD_DMA_BURST_16 ; 
 int /*<<< orphan*/  LCD_DMA_BURST_2 ; 
 int /*<<< orphan*/  LCD_DMA_BURST_4 ; 
 int /*<<< orphan*/  LCD_DMA_BURST_8 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCD_DMA_CTRL_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int burst_size)
{
	u32 reg;

	reg = FUNC1(LCD_DMA_CTRL_REG) & 0x00000001;
	switch (burst_size) {
	case 1:
		reg |= FUNC0(LCD_DMA_BURST_1);
		break;
	case 2:
		reg |= FUNC0(LCD_DMA_BURST_2);
		break;
	case 4:
		reg |= FUNC0(LCD_DMA_BURST_4);
		break;
	case 8:
		reg |= FUNC0(LCD_DMA_BURST_8);
		break;
	case 16:
		reg |= FUNC0(LCD_DMA_BURST_16);
		break;
	default:
		return -EINVAL;
	}
	FUNC2(reg, LCD_DMA_CTRL_REG);

	return 0;
}