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
struct vx_core {int chip_status; int /*<<< orphan*/  tq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int VX_STAT_CHIP_INIT ; 
 int VX_STAT_IS_STALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vx_core*) ; 

irqreturn_t FUNC2(int irq, void *dev)
{
	struct vx_core *chip = dev;

	if (! (chip->chip_status & VX_STAT_CHIP_INIT) ||
	    (chip->chip_status & VX_STAT_IS_STALE))
		return IRQ_NONE;
	if (! FUNC1(chip))
		FUNC0(&chip->tq);
	return IRQ_HANDLED;
}