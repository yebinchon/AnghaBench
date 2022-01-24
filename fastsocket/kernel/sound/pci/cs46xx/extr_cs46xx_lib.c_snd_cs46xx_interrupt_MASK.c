#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_cs46xx_pcm {scalar_t__ substream; } ;
struct TYPE_6__ {scalar_t__ substream; } ;
struct snd_cs46xx {int midcr; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  midi_output; int /*<<< orphan*/  midi_input; scalar_t__ rmidi; TYPE_3__ capt; scalar_t__ pcm; TYPE_2__* playback_pcm; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {TYPE_1__* pcm_channels; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {scalar_t__ substream; } ;
struct TYPE_4__ {struct snd_cs46xx_pcm* private_data; int /*<<< orphan*/  unlinked; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  BA0_HICR ; 
 int /*<<< orphan*/  BA0_HISR ; 
 int /*<<< orphan*/  BA0_HSR0 ; 
 int /*<<< orphan*/  BA0_MIDCR ; 
 int /*<<< orphan*/  BA0_MIDRP ; 
 int /*<<< orphan*/  BA0_MIDSR ; 
 int /*<<< orphan*/  BA0_MIDWP ; 
 int CS46XX_DSP_CAPTURE_CHANNEL ; 
 int DSP_MAX_PCM_CHANNELS ; 
 unsigned char HICR_CHGM ; 
 unsigned char HICR_IEV ; 
 int HISR_MIDI ; 
 int HISR_VC0 ; 
 int HISR_VC1 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MIDCR_RIE ; 
 int MIDCR_TIE ; 
 int MIDSR_RBE ; 
 int MIDSR_TBF ; 
 int FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct snd_cs46xx *chip = dev_id;
	u32 status1;
#ifdef CONFIG_SND_CS46XX_NEW_DSP
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;
	u32 status2;
	int i;
	struct snd_cs46xx_pcm *cpcm = NULL;
#endif

	/*
	 *  Read the Interrupt Status Register to clear the interrupt
	 */
	status1 = FUNC0(chip, BA0_HISR);
	if ((status1 & 0x7fffffff) == 0) {
		FUNC1(chip, BA0_HICR, HICR_CHGM | HICR_IEV);
		return IRQ_NONE;
	}

#ifdef CONFIG_SND_CS46XX_NEW_DSP
	status2 = snd_cs46xx_peekBA0(chip, BA0_HSR0);

	for (i = 0; i < DSP_MAX_PCM_CHANNELS; ++i) {
		if (i <= 15) {
			if ( status1 & (1 << i) ) {
				if (i == CS46XX_DSP_CAPTURE_CHANNEL) {
					if (chip->capt.substream)
						snd_pcm_period_elapsed(chip->capt.substream);
				} else {
					if (ins->pcm_channels[i].active &&
					    ins->pcm_channels[i].private_data &&
					    !ins->pcm_channels[i].unlinked) {
						cpcm = ins->pcm_channels[i].private_data;
						snd_pcm_period_elapsed(cpcm->substream);
					}
				}
			}
		} else {
			if ( status2 & (1 << (i - 16))) {
				if (ins->pcm_channels[i].active && 
				    ins->pcm_channels[i].private_data &&
				    !ins->pcm_channels[i].unlinked) {
					cpcm = ins->pcm_channels[i].private_data;
					snd_pcm_period_elapsed(cpcm->substream);
				}
			}
		}
	}

#else
	/* old dsp */
	if ((status1 & HISR_VC0) && chip->playback_pcm) {
		if (chip->playback_pcm->substream)
			FUNC2(chip->playback_pcm->substream);
	}
	if ((status1 & HISR_VC1) && chip->pcm) {
		if (chip->capt.substream)
			FUNC2(chip->capt.substream);
	}
#endif

	if ((status1 & HISR_MIDI) && chip->rmidi) {
		unsigned char c;
		
		FUNC5(&chip->reg_lock);
		while ((FUNC0(chip, BA0_MIDSR) & MIDSR_RBE) == 0) {
			c = FUNC0(chip, BA0_MIDRP);
			if ((chip->midcr & MIDCR_RIE) == 0)
				continue;
			FUNC3(chip->midi_input, &c, 1);
		}
		while ((FUNC0(chip, BA0_MIDSR) & MIDSR_TBF) == 0) {
			if ((chip->midcr & MIDCR_TIE) == 0)
				break;
			if (FUNC4(chip->midi_output, &c, 1) != 1) {
				chip->midcr &= ~MIDCR_TIE;
				FUNC1(chip, BA0_MIDCR, chip->midcr);
				break;
			}
			FUNC1(chip, BA0_MIDWP, c);
		}
		FUNC6(&chip->reg_lock);
	}
	/*
	 *  EOI to the PCI part....reenables interrupts
	 */
	FUNC1(chip, BA0_HICR, HICR_CHGM | HICR_IEV);

	return IRQ_HANDLED;
}