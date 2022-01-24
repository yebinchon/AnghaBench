#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct atiixp {int max_channels; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/ * dmas; } ;
struct TYPE_3__ {int channels_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 size_t ATI_DMA_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct atiixp* FUNC4 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct atiixp *chip = FUNC4(substream);
	int err;

	FUNC0(&chip->open_mutex);
	err = FUNC2(substream, &chip->dmas[ATI_DMA_PLAYBACK], 0);
	FUNC1(&chip->open_mutex);
	if (err < 0)
		return err;
	substream->runtime->hw.channels_max = chip->max_channels;
	if (chip->max_channels > 2)
		/* channels must be even */
		FUNC3(substream->runtime, 0,
					   SNDRV_PCM_HW_PARAM_CHANNELS, 2);
	return 0;
}