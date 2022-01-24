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
typedef  int u8 ;
struct snd_m3 {int num_substreams; scalar_t__ iobase; TYPE_1__* rmidi; int /*<<< orphan*/  reg_lock; struct m3_dma* substreams; int /*<<< orphan*/  hwvol_tq; } ;
struct m3_dma {scalar_t__ running; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 scalar_t__ ASSP_CONTROL_B ; 
 scalar_t__ ASSP_HOST_INT_STATUS ; 
 int ASSP_INT_PENDING ; 
 int DSP2HOST_REQ_TIMER ; 
 scalar_t__ HOST_INT_STATUS ; 
 int HV_INT_PENDING ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MPU401_INT_PENDING ; 
 int STOP_ASSP_CLOCK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  regs ; 
 int /*<<< orphan*/  FUNC2 (struct snd_m3*,struct m3_dma*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct snd_m3 *chip = dev_id;
	u8 status;
	int i;

	status = FUNC0(chip->iobase + HOST_INT_STATUS);

	if (status == 0xff)
		return IRQ_NONE;

	if (status & HV_INT_PENDING)
		FUNC6(&chip->hwvol_tq);

	/*
	 * ack an assp int if its running
	 * and has an int pending
	 */
	if (status & ASSP_INT_PENDING) {
		u8 ctl = FUNC0(chip->iobase + ASSP_CONTROL_B);
		if (!(ctl & STOP_ASSP_CLOCK)) {
			ctl = FUNC0(chip->iobase + ASSP_HOST_INT_STATUS);
			if (ctl & DSP2HOST_REQ_TIMER) {
				FUNC1(DSP2HOST_REQ_TIMER, chip->iobase + ASSP_HOST_INT_STATUS);
				/* update adc/dac info if it was a timer int */
				FUNC4(&chip->reg_lock);
				for (i = 0; i < chip->num_substreams; i++) {
					struct m3_dma *s = &chip->substreams[i];
					if (s->running)
						FUNC2(chip, s);
				}
				FUNC5(&chip->reg_lock);
			}
		}
	}

#if 0 /* TODO: not supported yet */
	if ((status & MPU401_INT_PENDING) && chip->rmidi)
		snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data, regs);
#endif

	/* ack ints */
	FUNC1(status, chip->iobase + HOST_INT_STATUS);

	return IRQ_HANDLED;
}