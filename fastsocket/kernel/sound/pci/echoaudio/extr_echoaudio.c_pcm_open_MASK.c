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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {char channels_max; int rate_max; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  private_free; struct audiopipe* private_data; TYPE_2__ hw; } ;
struct snd_pcm_hardware {int dummy; } ;
struct echoaudio {scalar_t__ digital_mode; int /*<<< orphan*/  pci; } ;
struct TYPE_3__ {char* list; int count; scalar_t__ mask; } ;
struct audiopipe {int index; int /*<<< orphan*/  sgpage; TYPE_1__ constr; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DIGITAL_MODE_ADAT ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_8000_48000 ; 
 int /*<<< orphan*/  audiopipe_free ; 
 char* channels_list ; 
 int /*<<< orphan*/  hw_rule_sample_rate ; 
 struct audiopipe* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pcm_hardware_skel ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct echoaudio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_substream*) ; 
 struct echoaudio* FUNC10 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream,
		    signed char max_channels)
{
	struct echoaudio *chip;
	struct snd_pcm_runtime *runtime;
	struct audiopipe *pipe;
	int err, i;

	if (max_channels <= 0)
		return -EAGAIN;

	chip = FUNC10(substream);
	runtime = substream->runtime;

	pipe = FUNC1(sizeof(struct audiopipe), GFP_KERNEL);
	if (!pipe)
		return -ENOMEM;
	pipe->index = -1;		/* Not configured yet */

	/* Set up hw capabilities and contraints */
	FUNC2(&pipe->hw, &pcm_hardware_skel, sizeof(struct snd_pcm_hardware));
	FUNC0(("max_channels=%d\n", max_channels));
	pipe->constr.list = channels_list;
	pipe->constr.mask = 0;
	for (i = 0; channels_list[i] <= max_channels; i++);
	pipe->constr.count = i;
	if (pipe->hw.channels_max > max_channels)
		pipe->hw.channels_max = max_channels;
	if (chip->digital_mode == DIGITAL_MODE_ADAT) {
		pipe->hw.rate_max = 48000;
		pipe->hw.rates &= SNDRV_PCM_RATE_8000_48000;
	}

	runtime->hw = pipe->hw;
	runtime->private_data = pipe;
	runtime->private_free = audiopipe_free;
	FUNC9(substream);

	/* Only mono and any even number of channels are allowed */
	if ((err = FUNC6(runtime, 0,
					      SNDRV_PCM_HW_PARAM_CHANNELS,
					      &pipe->constr)) < 0)
		return err;

	/* All periods should have the same size */
	if ((err = FUNC5(runtime,
						 SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
		return err;

	/* The hw accesses memory in chunks 32 frames long and they should be
	32-bytes-aligned. It's not a requirement, but it seems that IRQs are
	generated with a resolution of 32 frames. Thus we need the following */
	if ((err = FUNC7(runtime, 0,
					      SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
					      32)) < 0)
		return err;
	if ((err = FUNC7(runtime, 0,
					      SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
					      32)) < 0)
		return err;

	if ((err = FUNC8(substream->runtime, 0,
				       SNDRV_PCM_HW_PARAM_RATE,
					hw_rule_sample_rate, chip,
				       SNDRV_PCM_HW_PARAM_RATE, -1)) < 0)
		return err;

	/* Finally allocate a page for the scatter-gather list */
	if ((err = FUNC3(SNDRV_DMA_TYPE_DEV,
				       FUNC4(chip->pci),
				       PAGE_SIZE, &pipe->sgpage)) < 0) {
		FUNC0(("s-g list allocation failed\n"));
		return err;
	}

	return 0;
}