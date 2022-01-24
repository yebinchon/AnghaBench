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
struct da8xx_fb_par {int p_palette_base; int databuf_sz; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_BASE_ADDR_0_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int LOAD_DATA ; 
 int LOAD_PALETTE ; 
 int /*<<< orphan*/  PALETTE_AND_DATA ; 
 int /*<<< orphan*/  PALETTE_ONLY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int load_mode, struct da8xx_fb_par *par)
{
	u32 tmp = par->p_palette_base + par->databuf_sz - 4;
	u32 reg;

	/* Update the databuf in the hw. */
	FUNC2(par->p_palette_base, LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
	FUNC2(tmp, LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);

	/* Start the DMA. */
	reg = FUNC1(LCD_RASTER_CTRL_REG);
	reg &= ~(3 << 20);
	if (load_mode == LOAD_DATA)
		reg |= FUNC0(PALETTE_AND_DATA);
	else if (load_mode == LOAD_PALETTE)
		reg |= FUNC0(PALETTE_ONLY);

	FUNC2(reg, LCD_RASTER_CTRL_REG);
}