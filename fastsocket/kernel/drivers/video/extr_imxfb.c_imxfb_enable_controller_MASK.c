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
struct imxfb_info {int screen_dma; int /*<<< orphan*/  (* lcd_power ) (int) ;int /*<<< orphan*/  (* backlight_power ) (int) ;int /*<<< orphan*/  clk; scalar_t__ regs; } ;

/* Variables and functions */
 int CPOS_CC0 ; 
 int CPOS_CC1 ; 
 scalar_t__ LCDC_CPOS ; 
 scalar_t__ LCDC_POS ; 
 scalar_t__ LCDC_RMCR ; 
 scalar_t__ LCDC_SSA ; 
 int RMCR_LCDC_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct imxfb_info *fbi)
{
	FUNC1("Enabling LCD controller\n");

	FUNC5(fbi->screen_dma, fbi->regs + LCDC_SSA);

	/* panning offset 0 (0 pixel offset)        */
	FUNC5(0x00000000, fbi->regs + LCDC_POS);

	/* disable hardware cursor */
	FUNC5(FUNC2(fbi->regs + LCDC_CPOS) & ~(CPOS_CC0 | CPOS_CC1),
		fbi->regs + LCDC_CPOS);

	FUNC5(RMCR_LCDC_EN, fbi->regs + LCDC_RMCR);

	FUNC0(fbi->clk);

	if (fbi->backlight_power)
		fbi->backlight_power(1);
	if (fbi->lcd_power)
		fbi->lcd_power(1);
}