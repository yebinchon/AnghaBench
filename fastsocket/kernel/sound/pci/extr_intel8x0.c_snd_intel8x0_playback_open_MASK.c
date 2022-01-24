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
struct TYPE_2__ {int channels_max; int /*<<< orphan*/  formats; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct intel8x0 {scalar_t__ smp20bit; scalar_t__ dra; scalar_t__ multi4; scalar_t__ multi6; scalar_t__ multi8; int /*<<< orphan*/ * ichd; } ;

/* Variables and functions */
 size_t ICHD_PCMOUT ; 
 int /*<<< orphan*/  SNDRV_PCM_FMTBIT_S32_LE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  hw_constraints_channels4 ; 
 int /*<<< orphan*/  hw_constraints_channels6 ; 
 int /*<<< orphan*/  hw_constraints_channels8 ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*) ; 
 int FUNC1 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 struct intel8x0* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct intel8x0 *chip = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	int err;

	err = FUNC1(substream, &chip->ichd[ICHD_PCMOUT]);
	if (err < 0)
		return err;

	if (chip->multi8) {
		runtime->hw.channels_max = 8;
		FUNC2(runtime, 0,
						SNDRV_PCM_HW_PARAM_CHANNELS,
						&hw_constraints_channels8);
	} else if (chip->multi6) {
		runtime->hw.channels_max = 6;
		FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
					   &hw_constraints_channels6);
	} else if (chip->multi4) {
		runtime->hw.channels_max = 4;
		FUNC2(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
					   &hw_constraints_channels4);
	}
	if (chip->dra) {
		FUNC0(runtime);
	}
	if (chip->smp20bit) {
		runtime->hw.formats |= SNDRV_PCM_FMTBIT_S32_LE;
		FUNC3(runtime, 0, 32, 20);
	}
	return 0;
}