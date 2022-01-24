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
struct pxafb_info {TYPE_1__* overlay; int /*<<< orphan*/  command_done; int /*<<< orphan*/  disable_done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  branch_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LCCR0 ; 
 unsigned int LCCR0_LDM ; 
 int /*<<< orphan*/  LCSR ; 
 int /*<<< orphan*/  LCSR1 ; 
 unsigned int FUNC0 (int) ; 
 unsigned int LCSR_CMD_INT ; 
 unsigned int LCSR_LDD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct pxafb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxafb_info*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct pxafb_info *fbi = dev_id;
	unsigned int lccr0, lcsr;

	lcsr = FUNC2(fbi, LCSR);
	if (lcsr & LCSR_LDD) {
		lccr0 = FUNC2(fbi, LCCR0);
		FUNC3(fbi, LCCR0, lccr0 | LCCR0_LDM);
		FUNC1(&fbi->disable_done);
	}

#ifdef CONFIG_FB_PXA_SMARTPANEL
	if (lcsr & LCSR_CMD_INT)
		complete(&fbi->command_done);
#endif
	FUNC3(fbi, LCSR, lcsr);

#ifdef CONFIG_FB_PXA_OVERLAY
	{
		unsigned int lcsr1 = lcd_readl(fbi, LCSR1);
		if (lcsr1 & LCSR1_BS(1))
			complete(&fbi->overlay[0].branch_done);

		if (lcsr1 & LCSR1_BS(2))
			complete(&fbi->overlay[1].branch_done);

		lcd_writel(fbi, LCSR1, lcsr1);
	}
#endif
	return IRQ_HANDLED;
}