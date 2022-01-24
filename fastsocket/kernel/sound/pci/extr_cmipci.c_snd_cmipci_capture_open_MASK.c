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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_min; int rates; int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct cmipci {int chip_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_OPEN_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int SNDRV_PCM_RATE_44100 ; 
 int SNDRV_PCM_RATE_48000 ; 
 int SNDRV_PCM_RATE_KNOT ; 
 int /*<<< orphan*/  hw_constraints_rates ; 
 int FUNC0 (struct cmipci*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 TYPE_1__ snd_cmipci_capture ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cmipci* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct cmipci *cm = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	if ((err = FUNC0(cm, CM_OPEN_CAPTURE, substream)) < 0)
		return err;
	runtime->hw = snd_cmipci_capture;
	if (cm->chip_version == 68) {	// 8768 only supports 44k/48k recording
		runtime->hw.rate_min = 41000;
		runtime->hw.rates = SNDRV_PCM_RATE_44100 | SNDRV_PCM_RATE_48000;
	} else if (cm->chip_version == 55) {
		err = FUNC1(runtime, 0,
			SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates);
		if (err < 0)
			return err;
		runtime->hw.rates |= SNDRV_PCM_RATE_KNOT;
		runtime->hw.rate_max = 128000;
	}
	FUNC2(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 0x10000);
	return 0;
}