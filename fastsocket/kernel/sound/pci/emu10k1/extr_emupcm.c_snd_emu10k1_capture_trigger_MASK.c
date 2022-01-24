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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; int first_ptr; int /*<<< orphan*/  type; int /*<<< orphan*/  capture_bs_reg; int /*<<< orphan*/  capture_ipr; int /*<<< orphan*/  capture_inte; int /*<<< orphan*/  capture_bs_val; int /*<<< orphan*/  capture_cr_val; int /*<<< orphan*/  capture_cr_val2; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  audigy; scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADCCR ; 
 int /*<<< orphan*/  A_FXWC1 ; 
 int /*<<< orphan*/  A_FXWC2 ; 
#define  CAPTURE_AC97ADC 133 
#define  CAPTURE_EFX 132 
 int EINVAL ; 
 int /*<<< orphan*/  FXWC ; 
 scalar_t__ IPR ; 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_emu10k1* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
				       int cmd)
{
	struct snd_emu10k1 *emu = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_emu10k1_pcm *epcm = runtime->private_data;
	int result = 0;

	FUNC6(&emu->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		/* hmm this should cause full and half full interrupt to be raised? */
		FUNC0(epcm->capture_ipr, emu->port + IPR);
		FUNC2(emu, epcm->capture_inte);
		/*
		printk(KERN_DEBUG "adccr = 0x%x, adcbs = 0x%x\n",
		       epcm->adccr, epcm->adcbs);
		*/
		switch (epcm->type) {
		case CAPTURE_AC97ADC:
			FUNC3(emu, ADCCR, 0, epcm->capture_cr_val);
			break;
		case CAPTURE_EFX:
			if (emu->audigy) {
				FUNC3(emu, A_FXWC1, 0, epcm->capture_cr_val);
				FUNC3(emu, A_FXWC2, 0, epcm->capture_cr_val2);
				FUNC5("cr_val=0x%x, cr_val2=0x%x\n", epcm->capture_cr_val, epcm->capture_cr_val2);
			} else
				FUNC3(emu, FXWC, 0, epcm->capture_cr_val);
			break;
		default:	
			break;
		}
		FUNC3(emu, epcm->capture_bs_reg, 0, epcm->capture_bs_val);
		epcm->running = 1;
		epcm->first_ptr = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		epcm->running = 0;
		FUNC1(emu, epcm->capture_inte);
		FUNC0(epcm->capture_ipr, emu->port + IPR);
		FUNC3(emu, epcm->capture_bs_reg, 0, 0);
		switch (epcm->type) {
		case CAPTURE_AC97ADC:
			FUNC3(emu, ADCCR, 0, 0);
			break;
		case CAPTURE_EFX:
			if (emu->audigy) {
				FUNC3(emu, A_FXWC1, 0, 0);
				FUNC3(emu, A_FXWC2, 0, 0);
			} else
				FUNC3(emu, FXWC, 0, 0);
			break;
		default:
			break;
		}
		break;
	default:
		result = -EINVAL;
	}
	FUNC7(&emu->reg_lock);
	return result;
}