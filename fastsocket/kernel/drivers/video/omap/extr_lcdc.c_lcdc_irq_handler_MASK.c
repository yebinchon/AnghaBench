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
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  palette_load_complete; int /*<<< orphan*/  last_frame_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  OMAP_LCDC_CONTROL ; 
 int OMAP_LCDC_IRQ_DONE ; 
 int /*<<< orphan*/  OMAP_LCDC_STATUS ; 
 int OMAP_LCDC_STAT_ABC ; 
 int OMAP_LCDC_STAT_DONE ; 
 int OMAP_LCDC_STAT_FUF ; 
 int OMAP_LCDC_STAT_LINE_INT ; 
 int OMAP_LCDC_STAT_LOADED_PALETTE ; 
 int OMAP_LCDC_STAT_SYNC_LOST ; 
 int OMAP_LCDC_STAT_VSYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ lcdc ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	u32 status;

	status = FUNC2(OMAP_LCDC_STATUS);

	if (status & (OMAP_LCDC_STAT_FUF | OMAP_LCDC_STAT_SYNC_LOST))
		FUNC4(status);
	else {
		if (status & OMAP_LCDC_STAT_DONE) {
			u32 l;

			/*
			 * Disable IRQ_DONE. The status bit will be cleared
			 * only when the controller is reenabled and we don't
			 * want to get more interrupts.
			 */
			l = FUNC2(OMAP_LCDC_CONTROL);
			l &= ~OMAP_LCDC_IRQ_DONE;
			FUNC3(l, OMAP_LCDC_CONTROL);
			FUNC0(&lcdc.last_frame_complete);
		}
		if (status & OMAP_LCDC_STAT_LOADED_PALETTE) {
			FUNC1();
			FUNC0(&lcdc.palette_load_complete);
		}
	}

	/*
	 * Clear these interrupt status bits.
	 * Sync_lost, FUF bits were cleared by disabling the LCD controller
	 * LOADED_PALETTE can be cleared this way only in palette only
	 * load mode. In other load modes it's cleared by disabling the
	 * controller.
	 */
	status &= ~(OMAP_LCDC_STAT_VSYNC |
		    OMAP_LCDC_STAT_LOADED_PALETTE |
		    OMAP_LCDC_STAT_ABC |
		    OMAP_LCDC_STAT_LINE_INT);
	FUNC3(status, OMAP_LCDC_STATUS);
	return IRQ_HANDLED;
}