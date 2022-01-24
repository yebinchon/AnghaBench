#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ color_mode; scalar_t__ palette_virt; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OMAPFB_COLOR_CLUT_8BPP ; 
 int /*<<< orphan*/  OMAP_LCDC_LOAD_FRAME ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ lcdc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(u_int regno, u16 red, u16 green, u16 blue,
			       u16 transp, int update_hw_pal)
{
	u16 *palette;

	if (lcdc.color_mode != OMAPFB_COLOR_CLUT_8BPP || regno > 255)
		return -EINVAL;

	palette = (u16 *)lcdc.palette_virt;

	palette[regno] &= ~0x0fff;
	palette[regno] |= ((red >> 12) << 8) | ((green >> 12) << 4 ) |
			   (blue >> 12);

	if (update_hw_pal) {
		FUNC0();
		FUNC3();
		FUNC2();
		FUNC5();
		FUNC4(OMAP_LCDC_LOAD_FRAME);
		FUNC1();
	}

	return 0;
}