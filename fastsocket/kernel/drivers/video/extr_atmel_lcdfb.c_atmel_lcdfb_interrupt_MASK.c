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
struct fb_info {int /*<<< orphan*/  device; struct atmel_lcdfb_info* par; } ;
struct atmel_lcdfb_info {int /*<<< orphan*/  task; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_LCDC_ICR ; 
 int /*<<< orphan*/  ATMEL_LCDC_ISR ; 
 int ATMEL_LCDC_UFLWI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct atmel_lcdfb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_lcdfb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct fb_info *info = dev_id;
	struct atmel_lcdfb_info *sinfo = info->par;
	u32 status;

	status = FUNC1(sinfo, ATMEL_LCDC_ISR);
	if (status & ATMEL_LCDC_UFLWI) {
		FUNC0(info->device, "FIFO underflow %#x\n", status);
		/* reset DMA and FIFO to avoid screen shifting */
		FUNC3(&sinfo->task);
	}
	FUNC2(sinfo, ATMEL_LCDC_ICR, status);
	return IRQ_HANDLED;
}