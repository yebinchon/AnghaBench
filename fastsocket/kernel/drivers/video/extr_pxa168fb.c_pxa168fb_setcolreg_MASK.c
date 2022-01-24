#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pxa168fb_info {int* pseudo_palette; scalar_t__ reg_base; } ;
struct TYPE_4__ {scalar_t__ visual; } ;
struct TYPE_3__ {int /*<<< orphan*/  blue; int /*<<< orphan*/  green; int /*<<< orphan*/  red; scalar_t__ grayscale; } ;
struct fb_info {TYPE_2__ fix; TYPE_1__ var; struct pxa168fb_info* par; } ;

/* Variables and functions */
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ; 
 scalar_t__ FB_VISUAL_TRUECOLOR ; 
 scalar_t__ LCD_SPU_SRAM_CTRL ; 
 scalar_t__ LCD_SPU_SRAM_WRDAT ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC3(unsigned int regno, unsigned int red, unsigned int green,
		 unsigned int blue, unsigned int trans, struct fb_info *info)
{
	struct pxa168fb_info *fbi = info->par;
	u32 val;

	if (info->var.grayscale)
		red = green = blue = (19595 * red + 38470 * green +
					7471 * blue) >> 16;

	if (info->fix.visual == FB_VISUAL_TRUECOLOR && regno < 16) {
		val =  FUNC0(red,   &info->var.red);
		val |= FUNC0(green, &info->var.green);
		val |= FUNC0(blue , &info->var.blue);
		fbi->pseudo_palette[regno] = val;
	}

	if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR && regno < 256) {
		val = FUNC1(red, green, blue);
		FUNC2(val, fbi->reg_base + LCD_SPU_SRAM_WRDAT);
		FUNC2(0x8300 | regno, fbi->reg_base + LCD_SPU_SRAM_CTRL);
	}

	return 0;
}