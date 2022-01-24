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
struct TYPE_2__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; void* private_data; } ;
struct snd_ice1712 {int num_total_dacs; int /*<<< orphan*/  open_mutex; scalar_t__* pcm_reserved; struct snd_pcm_substream* playback_pro_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 int VT1724_BUFFER_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ice1712*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC6 (struct snd_pcm_substream*) ; 
 TYPE_1__ snd_vt1724_playback_pro ; 
 int /*<<< orphan*/  vt1724_playback_pro_reg ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ice1712 *ice = FUNC6(substream);
	int chs, num_indeps;

	runtime->private_data = (void *)&vt1724_playback_pro_reg;
	ice->playback_pro_substream = substream;
	runtime->hw = snd_vt1724_playback_pro;
	FUNC5(substream);
	FUNC3(runtime, 0, 32, 24);
	FUNC2(ice, substream);
	FUNC0(&ice->open_mutex);
	/* calculate the currently available channels */
	num_indeps = ice->num_total_dacs / 2 - 1;
	for (chs = 0; chs < num_indeps; chs++) {
		if (ice->pcm_reserved[chs])
			break;
	}
	chs = (chs + 1) * 2;
	runtime->hw.channels_max = chs;
	if (chs > 2) /* channels must be even */
		FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, 2);
	FUNC1(&ice->open_mutex);
	FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
				   VT1724_BUFFER_ALIGN);
	FUNC4(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
				   VT1724_BUFFER_ALIGN);
	return 0;
}