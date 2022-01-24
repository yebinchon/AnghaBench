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
struct emu10k1x_voice {scalar_t__ use; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* interrupt ) (struct emu10k1x*,unsigned int) ;} ;
struct emu10k1x {scalar_t__ port; TYPE_1__ midi; struct emu10k1x_voice capture_voice; struct emu10k1x_voice* voices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INTE_CAP_0_HALF_LOOP ; 
 int INTE_CAP_0_LOOP ; 
 int INTE_MIDIRXENABLE ; 
 int INTE_MIDITXENABLE ; 
 scalar_t__ IPR ; 
 unsigned int IPR_CAP_0_HALF_LOOP ; 
 unsigned int IPR_CAP_0_LOOP ; 
 int IPR_CH_0_HALF_LOOP ; 
 int IPR_CH_0_LOOP ; 
 unsigned int IPR_MIDIRECVBUFEMPTY ; 
 unsigned int IPR_MIDITRANSBUFEMPTY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct emu10k1x*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct emu10k1x*,struct emu10k1x_voice*) ; 
 int /*<<< orphan*/  FUNC4 (struct emu10k1x*,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	unsigned int status;

	struct emu10k1x *chip = dev_id;
	struct emu10k1x_voice *pvoice = chip->voices;
	int i;
	int mask;

	status = FUNC0(chip->port + IPR);

	if (! status)
		return IRQ_NONE;

	// capture interrupt
	if (status & (IPR_CAP_0_LOOP | IPR_CAP_0_HALF_LOOP)) {
		struct emu10k1x_voice *cap_voice = &chip->capture_voice;
		if (cap_voice->use)
			FUNC3(chip, cap_voice);
		else
			FUNC2(chip, 
						  INTE_CAP_0_LOOP |
						  INTE_CAP_0_HALF_LOOP);
	}
		
	mask = IPR_CH_0_LOOP|IPR_CH_0_HALF_LOOP;
	for (i = 0; i < 3; i++) {
		if (status & mask) {
			if (pvoice->use)
				FUNC3(chip, pvoice);
			else 
				FUNC2(chip, mask);
		}
		pvoice++;
		mask <<= 1;
	}
		
	if (status & (IPR_MIDITRANSBUFEMPTY|IPR_MIDIRECVBUFEMPTY)) {
		if (chip->midi.interrupt)
			chip->midi.interrupt(chip, status);
		else
			FUNC2(chip, INTE_MIDITXENABLE|INTE_MIDIRXENABLE);
	}
		
	// acknowledge the interrupt if necessary
	FUNC1(status, chip->port + IPR);

	// snd_printk(KERN_INFO "interrupt %08x\n", status);
	return IRQ_HANDLED;
}