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
struct TYPE_4__ {TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLIZZARD_CLK_SRC ; 
 int /*<<< orphan*/  BLIZZARD_PLL_CLOCK_SYNTH_0 ; 
 int /*<<< orphan*/  BLIZZARD_PLL_CLOCK_SYNTH_1 ; 
 int /*<<< orphan*/  BLIZZARD_PLL_DIV ; 
 TYPE_2__ blizzard ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,...) ; 

__attribute__((used)) static void FUNC2(unsigned long ext_clk,
				unsigned long *sys_clk, unsigned long *pix_clk)
{
	int pix_clk_src;
	int sys_div = 0, sys_mul = 0;
	int pix_div;

	pix_clk_src = FUNC0(BLIZZARD_CLK_SRC);
	pix_div = ((pix_clk_src >> 3) & 0x1f) + 1;
	if ((pix_clk_src & (0x3 << 1)) == 0) {
		/* Source is the PLL */
		sys_div = (FUNC0(BLIZZARD_PLL_DIV) & 0x3f) + 1;
		sys_mul = FUNC0(BLIZZARD_PLL_CLOCK_SYNTH_0);
		sys_mul |= ((FUNC0(BLIZZARD_PLL_CLOCK_SYNTH_1)
				& 0x0f)	<< 11);
		*sys_clk = ext_clk * sys_mul / sys_div;
	} else	/* else source is ext clk, or oscillator */
		*sys_clk = ext_clk;

	*pix_clk = *sys_clk / pix_div;			/* HZ */
	FUNC1(blizzard.fbdev->dev,
		"ext_clk %ld pix_src %d pix_div %d sys_div %d sys_mul %d\n",
		ext_clk, pix_clk_src & (0x3 << 1), pix_div, sys_div, sys_mul);
	FUNC1(blizzard.fbdev->dev, "sys_clk %ld pix_clk %ld\n",
		*sys_clk, *pix_clk);
}