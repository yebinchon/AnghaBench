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
struct voice {int /*<<< orphan*/  substream; int /*<<< orphan*/  timing; } ;
struct sis7019 {unsigned long ioport; struct voice capture_voice; int /*<<< orphan*/ * voices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SIS_GISR ; 
 int SIS_GISR_AUDIO_PLAY_DMA_IRQ_STATUS ; 
 int SIS_GISR_AUDIO_RECORD_DMA_IRQ_STATUS ; 
 scalar_t__ SIS_PISR_A ; 
 scalar_t__ SIS_PISR_B ; 
 scalar_t__ SIS_RISR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev)
{
	struct sis7019 *sis = dev;
	unsigned long io = sis->ioport;
	struct voice *voice;
	u32 intr, status;

	/* We only use the DMA interrupts, and we don't enable any other
	 * source of interrupts. But, it is possible to see an interupt
	 * status that didn't actually interrupt us, so eliminate anything
	 * we're not expecting to avoid falsely claiming an IRQ, and an
	 * ensuing endless loop.
	 */
	intr = FUNC0(io + SIS_GISR);
	intr &= SIS_GISR_AUDIO_PLAY_DMA_IRQ_STATUS |
		SIS_GISR_AUDIO_RECORD_DMA_IRQ_STATUS;
	if (!intr)
		return IRQ_NONE;

	do {
		status = FUNC0(io + SIS_PISR_A);
		if (status) {
			FUNC2(status, sis->voices);
			FUNC1(status, io + SIS_PISR_A);
		}

		status = FUNC0(io + SIS_PISR_B);
		if (status) {
			FUNC2(status, &sis->voices[32]);
			FUNC1(status, io + SIS_PISR_B);
		}

		status = FUNC0(io + SIS_RISR);
		if (status) {
			voice = &sis->capture_voice;
			if (!voice->timing)
				FUNC3(voice->substream);

			FUNC1(status, io + SIS_RISR);
		}

		FUNC1(intr, io + SIS_GISR);
		intr = FUNC0(io + SIS_GISR);
		intr &= SIS_GISR_AUDIO_PLAY_DMA_IRQ_STATUS |
			SIS_GISR_AUDIO_RECORD_DMA_IRQ_STATUS;
	} while (intr);

	return IRQ_HANDLED;
}