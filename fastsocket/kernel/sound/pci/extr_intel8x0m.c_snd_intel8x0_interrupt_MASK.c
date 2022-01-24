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
struct intel8x0m {unsigned int int_sta_mask; unsigned int bdbars_count; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  int_sta_reg; struct ichdev* ichd; } ;
struct ichdev {unsigned int int_sta_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct intel8x0m*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel8x0m*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel8x0m*,struct ichdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct intel8x0m *chip = dev_id;
	struct ichdev *ichdev;
	unsigned int status;
	unsigned int i;

	FUNC3(&chip->reg_lock);
	status = FUNC0(chip, chip->int_sta_reg);
	if (status == 0xffffffff) { /* we are not yet resumed */
		FUNC4(&chip->reg_lock);
		return IRQ_NONE;
	}
	if ((status & chip->int_sta_mask) == 0) {
		if (status)
			FUNC1(chip, chip->int_sta_reg, status);
		FUNC4(&chip->reg_lock);
		return IRQ_NONE;
	}

	for (i = 0; i < chip->bdbars_count; i++) {
		ichdev = &chip->ichd[i];
		if (status & ichdev->int_sta_mask)
			FUNC2(chip, ichdev);
	}

	/* ack them */
	FUNC1(chip, chip->int_sta_reg, status & chip->int_sta_mask);
	FUNC4(&chip->reg_lock);
	
	return IRQ_HANDLED;
}