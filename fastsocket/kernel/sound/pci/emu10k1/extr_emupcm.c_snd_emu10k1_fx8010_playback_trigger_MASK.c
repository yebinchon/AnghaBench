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
struct snd_pcm_substream {size_t number; } ;
struct snd_emu10k1_fx8010_pcm {int /*<<< orphan*/  tram_shift; int /*<<< orphan*/  buffer_size; int /*<<< orphan*/  tram_pos; scalar_t__ gpr_trigger; int /*<<< orphan*/ * irq; int /*<<< orphan*/  gpr_running; } ;
struct TYPE_2__ {struct snd_emu10k1_fx8010_pcm* pcm; } ;
struct snd_emu10k1 {int /*<<< orphan*/  reg_lock; scalar_t__ gpr_base; TYPE_1__ fx8010; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  SPCS0 ; 
 int SPCS_CHANNELNUM_LEFT ; 
 int SPCS_CLKACCY_1000PPM ; 
 int SPCS_COPYRIGHT ; 
 int SPCS_EMPHASIS_NONE ; 
 int SPCS_GENERATIONSTATUS ; 
 int SPCS_NOTAUDIODATA ; 
 int SPCS_SAMPLERATE_48 ; 
 int SPCS_SOURCENUM_UNSPEC ; 
 int /*<<< orphan*/  snd_emu10k1_fx8010_playback_irq ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 int FUNC2 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm_substream*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu10k1*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct snd_emu10k1* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_emu10k1 *emu = FUNC5(substream);
	struct snd_emu10k1_fx8010_pcm *pcm = &emu->fx8010.pcm[substream->number];
	int result = 0;

	FUNC6(&emu->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		/* follow thru */
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
	case SNDRV_PCM_TRIGGER_RESUME:
#ifdef EMU10K1_SET_AC3_IEC958
	{
		int i;
		for (i = 0; i < 3; i++) {
			unsigned int bits;
			bits = SPCS_CLKACCY_1000PPM | SPCS_SAMPLERATE_48 |
			       SPCS_CHANNELNUM_LEFT | SPCS_SOURCENUM_UNSPEC | SPCS_GENERATIONSTATUS |
			       0x00001200 | SPCS_EMPHASIS_NONE | SPCS_COPYRIGHT | SPCS_NOTAUDIODATA;
			snd_emu10k1_ptr_write(emu, SPCS0 + i, 0, bits);
		}
	}
#endif
		result = FUNC2(emu, snd_emu10k1_fx8010_playback_irq, pcm->gpr_running, substream, &pcm->irq);
		if (result < 0)
			goto __err;
		FUNC1(substream);	/* roll the ball */
		FUNC4(emu, emu->gpr_base + pcm->gpr_trigger, 0, 1);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		FUNC3(emu, pcm->irq); pcm->irq = NULL;
		FUNC4(emu, emu->gpr_base + pcm->gpr_trigger, 0, 0);
		pcm->tram_pos = FUNC0(pcm->buffer_size);
		pcm->tram_shift = 0;
		break;
	default:
		result = -EINVAL;
		break;
	}
      __err:
	FUNC7(&emu->reg_lock);
	return result;
}