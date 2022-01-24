#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ model; int irq_mode; int irq_mode_16; int /*<<< orphan*/  dev; scalar_t__ intr_active_16; int /*<<< orphan*/  fullduplex; scalar_t__ intr_active; scalar_t__ midi_irq_cookie; int /*<<< orphan*/  irq; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  DSP_DATA_AVL16 ; 
#define  IMODE_INIT 131 
#define  IMODE_INPUT 130 
#define  IMODE_MIDI 129 
#define  IMODE_OUTPUT 128 
 int /*<<< orphan*/  IRQ_STAT ; 
 scalar_t__ MDL_SB16 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6 (sb_devc *devc)
{
	int status;
	unsigned char   src = 0xff;

	if (devc->model == MDL_SB16)
	{
		src = FUNC3(devc, IRQ_STAT);	/* Interrupt source register */

		if (src & 4)						/* MPU401 interrupt */
			if(devc->midi_irq_cookie)
				FUNC5(devc->irq, devc->midi_irq_cookie);

		if (!(src & 3))
			return;	/* Not a DSP interrupt */
	}
	if (devc->intr_active && (!devc->fullduplex || (src & 0x01)))
	{
		switch (devc->irq_mode)
		{
			case IMODE_OUTPUT:
				FUNC1(devc->dev, 1);
				break;

			case IMODE_INPUT:
				FUNC0(devc->dev);
				break;

			case IMODE_INIT:
				break;

			case IMODE_MIDI:
				FUNC4(devc);
				break;

			default:
				/* printk(KERN_WARNING "Sound Blaster: Unexpected interrupt\n"); */
				;
		}
	}
	else if (devc->intr_active_16 && (src & 0x02))
	{
		switch (devc->irq_mode_16)
		{
			case IMODE_OUTPUT:
				FUNC1(devc->dev, 1);
				break;

			case IMODE_INPUT:
				FUNC0(devc->dev);
				break;

			case IMODE_INIT:
				break;

			default:
				/* printk(KERN_WARNING "Sound Blaster: Unexpected interrupt\n"); */
				;
		}
	}
	/*
	 * Acknowledge interrupts 
	 */

	if (src & 0x01)
		status = FUNC2(DSP_DATA_AVAIL);

	if (devc->model == MDL_SB16 && src & 0x02)
		status = FUNC2(DSP_DATA_AVL16);
}