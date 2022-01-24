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
struct viadev {scalar_t__ substream; scalar_t__ running; } ;
struct via82xx_modem {unsigned int intr_mask; unsigned int num_devs; int /*<<< orphan*/  reg_lock; struct viadev* devs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  OFFSET_STATUS ; 
 int /*<<< orphan*/  SGD_SHADOW ; 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct via82xx_modem*,int /*<<< orphan*/ ) ; 
 unsigned char VIA_REG_STAT_EOL ; 
 unsigned char VIA_REG_STAT_FLAG ; 
 unsigned char VIA_REG_STAT_STOPPED ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct via82xx_modem *chip = dev_id;
	unsigned int status;
	unsigned int i;

	status = FUNC3(FUNC1(chip, SGD_SHADOW));
	if (! (status & chip->intr_mask)) {
		return IRQ_NONE;
	}
// _skip_sgd:

	/* check status for each stream */
	FUNC6(&chip->reg_lock);
	for (i = 0; i < chip->num_devs; i++) {
		struct viadev *viadev = &chip->devs[i];
		unsigned char c_status = FUNC2(FUNC0(viadev, OFFSET_STATUS));
		c_status &= (VIA_REG_STAT_EOL|VIA_REG_STAT_FLAG|VIA_REG_STAT_STOPPED);
		if (! c_status)
			continue;
		if (viadev->substream && viadev->running) {
			FUNC7(&chip->reg_lock);
			FUNC5(viadev->substream);
			FUNC6(&chip->reg_lock);
		}
		FUNC4(c_status, FUNC0(viadev, OFFSET_STATUS)); /* ack */
	}
	FUNC7(&chip->reg_lock);
	return IRQ_HANDLED;
}