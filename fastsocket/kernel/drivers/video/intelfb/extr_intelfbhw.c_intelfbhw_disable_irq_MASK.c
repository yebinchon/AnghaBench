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
struct TYPE_4__ {int /*<<< orphan*/  pan_offset; scalar_t__ pan_display; } ;
struct intelfb_info {TYPE_1__* pdev; int /*<<< orphan*/  int_lock; TYPE_2__ vsync; int /*<<< orphan*/  irq_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSPABASE ; 
 int /*<<< orphan*/  HWSTAM ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  IIR ; 
 int /*<<< orphan*/  IMR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct intelfb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct intelfb_info *dinfo)
{
	if (FUNC6(0, &dinfo->irq_flags)) {
		if (dinfo->vsync.pan_display) {
			dinfo->vsync.pan_display = 0;
			FUNC1(DSPABASE, dinfo->vsync.pan_offset);
		}
		FUNC4(&dinfo->int_lock);
		FUNC2(HWSTAM, 0xffff);
		FUNC2(IMR, 0xffff);
		FUNC2(IER, 0x0);

		FUNC2(IIR, FUNC0(IIR)); /* clear IRQ requests */
		FUNC5(&dinfo->int_lock);

		FUNC3(dinfo->pdev->irq, dinfo);
	}
}