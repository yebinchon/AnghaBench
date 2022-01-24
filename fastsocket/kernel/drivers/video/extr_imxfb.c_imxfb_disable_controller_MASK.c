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
struct imxfb_info {scalar_t__ regs; int /*<<< orphan*/  clk; int /*<<< orphan*/  (* lcd_power ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* backlight_power ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ LCDC_RMCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct imxfb_info *fbi)
{
	FUNC1("Disabling LCD controller\n");

	if (fbi->backlight_power)
		fbi->backlight_power(0);
	if (fbi->lcd_power)
		fbi->lcd_power(0);

	FUNC0(fbi->clk);

	FUNC4(0, fbi->regs + LCDC_RMCR);
}