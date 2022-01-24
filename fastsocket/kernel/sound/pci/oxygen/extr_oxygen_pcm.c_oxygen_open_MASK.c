#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_10__ {int rates; int rate_min; int channels_max; int formats; } ;
struct snd_pcm_runtime {TYPE_4__ hw; void* private_data; } ;
struct TYPE_7__ {int device_config; int dac_channels_pcm; int /*<<< orphan*/  (* pcm_hardware_filter ) (unsigned int,TYPE_4__*) ;} ;
struct oxygen {int pcm_active; int /*<<< orphan*/  mutex; TYPE_3__** controls; int /*<<< orphan*/  card; int /*<<< orphan*/  spdif_bits; int /*<<< orphan*/  spdif_pcm_bits; struct snd_pcm_substream** streams; TYPE_1__ model; scalar_t__ has_ac97_1; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; TYPE_2__* vd; } ;
struct TYPE_8__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int CAPTURE_2_FROM_AC97_1 ; 
 size_t CONTROL_SPDIF_PCM ; 
 unsigned int PCM_B ; 
#define  PCM_C 129 
#define  PCM_MULTICH 128 
 unsigned int PCM_SPDIF ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int SNDRV_PCM_FMTBIT_S32_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int SNDRV_PCM_RATE_32000 ; 
 int SNDRV_PCM_RATE_64000 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__ oxygen_ac97_hardware ; 
 TYPE_4__** oxygen_hardware ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 struct oxygen* FUNC6 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,TYPE_4__*) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream,
		       unsigned int channel)
{
	struct oxygen *chip = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	runtime->private_data = (void *)(uintptr_t)channel;
	if (channel == PCM_B && chip->has_ac97_1 &&
	    (chip->model.device_config & CAPTURE_2_FROM_AC97_1))
		runtime->hw = oxygen_ac97_hardware;
	else
		runtime->hw = *oxygen_hardware[channel];
	switch (channel) {
	case PCM_C:
		runtime->hw.rates &= ~(SNDRV_PCM_RATE_32000 |
				       SNDRV_PCM_RATE_64000);
		runtime->hw.rate_min = 44100;
		break;
	case PCM_MULTICH:
		runtime->hw.channels_max = chip->model.dac_channels_pcm;
		break;
	}
	if (chip->model.pcm_hardware_filter)
		chip->model.pcm_hardware_filter(channel, &runtime->hw);
	err = FUNC4(runtime, 0,
					 SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
	if (err < 0)
		return err;
	err = FUNC4(runtime, 0,
					 SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
	if (err < 0)
		return err;
	if (runtime->hw.formats & SNDRV_PCM_FMTBIT_S32_LE) {
		err = FUNC3(runtime, 0, 32, 24);
		if (err < 0)
			return err;
	}
	if (runtime->hw.channels_max > 2) {
		err = FUNC4(runtime, 0,
						 SNDRV_PCM_HW_PARAM_CHANNELS,
						 2);
		if (err < 0)
			return err;
	}
	FUNC5(substream);
	chip->streams[channel] = substream;

	FUNC0(&chip->mutex);
	chip->pcm_active |= 1 << channel;
	if (channel == PCM_SPDIF) {
		chip->spdif_pcm_bits = chip->spdif_bits;
		chip->controls[CONTROL_SPDIF_PCM]->vd[0].access &=
			~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
		FUNC2(chip->card, SNDRV_CTL_EVENT_MASK_VALUE |
			       SNDRV_CTL_EVENT_MASK_INFO,
			       &chip->controls[CONTROL_SPDIF_PCM]->id);
	}
	FUNC1(&chip->mutex);

	return 0;
}