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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 long GSR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  MCSR ; 
 int /*<<< orphan*/  MCSR_EOC ; 
 int /*<<< orphan*/  MISR ; 
 int /*<<< orphan*/  MISR_EOC ; 
 int /*<<< orphan*/  PISR ; 
 int /*<<< orphan*/  PISR_EOC ; 
 scalar_t__ FUNC0 () ; 
 long gsr_bits ; 
 int /*<<< orphan*/  gsr_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	long status;

	status = GSR;
	if (status) {
		GSR = status;
		gsr_bits |= status;
		FUNC1(&gsr_wq);

		/* Although we don't use those we still need to clear them
		   since they tend to spuriously trigger when MMC is used
		   (hardware bug? go figure)... */
		if (FUNC0()) {
			MISR = MISR_EOC;
			PISR = PISR_EOC;
			MCSR = MCSR_EOC;
		}

		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}