#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_7__ {int rate_min; int rate_max; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; int /*<<< orphan*/  rates; } ;
struct snd_pcm_runtime {TYPE_3__ hw; int /*<<< orphan*/  dma_bytes; int /*<<< orphan*/  dma_area; } ;
struct hdsp {int system_sample_rate; scalar_t__ io_type; TYPE_2__* spdif_ctl; int /*<<< orphan*/  card; int /*<<< orphan*/  creg_spdif; int /*<<< orphan*/  creg_spdif_stream; int /*<<< orphan*/  ss_out_channels; int /*<<< orphan*/  qs_out_channels; scalar_t__ clock_source_locked; int /*<<< orphan*/  lock; struct snd_pcm_substream* playback_substream; int /*<<< orphan*/  playback_pid; int /*<<< orphan*/  playback_buffer; } ;
struct TYPE_8__ {int /*<<< orphan*/  pid; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; TYPE_1__* vd; } ;
struct TYPE_5__ {int /*<<< orphan*/  access; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ H9632 ; 
 int /*<<< orphan*/  HDSP_DMA_AREA_BYTES ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_KNOT ; 
 TYPE_4__* current ; 
 scalar_t__ FUNC0 (struct hdsp*,int) ; 
 scalar_t__ FUNC1 (struct hdsp*) ; 
 int /*<<< orphan*/  hdsp_hw_constraints_9632_sample_rates ; 
 int /*<<< orphan*/  hdsp_hw_constraints_period_sizes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_hdsp_hw_rule_out_channels ; 
 int /*<<< orphan*/  snd_hdsp_hw_rule_out_channels_rate ; 
 int /*<<< orphan*/  snd_hdsp_hw_rule_rate_out_channels ; 
 TYPE_3__ snd_hdsp_playback_subinfo ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hdsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*) ; 
 struct hdsp* FUNC7 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_substream *substream)
{
	struct hdsp *hdsp = FUNC7(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	if (FUNC1 (hdsp))
		return -EIO;

	if (FUNC0(hdsp, 1))
		return -EIO;

	FUNC8(&hdsp->lock);

	FUNC6(substream);

        runtime->hw = snd_hdsp_playback_subinfo;
	runtime->dma_area = hdsp->playback_buffer;
	runtime->dma_bytes = HDSP_DMA_AREA_BYTES;

	hdsp->playback_pid = current->pid;
	hdsp->playback_substream = substream;

	FUNC9(&hdsp->lock);

	FUNC4(runtime, 0, 32, 24);
	FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, &hdsp_hw_constraints_period_sizes);
	if (hdsp->clock_source_locked) {
		runtime->hw.rate_min = runtime->hw.rate_max = hdsp->system_sample_rate;
	} else if (hdsp->io_type == H9632) {
		runtime->hw.rate_max = 192000;
		runtime->hw.rates = SNDRV_PCM_RATE_KNOT;
		FUNC3(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hdsp_hw_constraints_9632_sample_rates);
	}
	if (hdsp->io_type == H9632) {
		runtime->hw.channels_min = hdsp->qs_out_channels;
		runtime->hw.channels_max = hdsp->ss_out_channels;
	}

	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			     snd_hdsp_hw_rule_out_channels, hdsp,
			     SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
			     snd_hdsp_hw_rule_out_channels_rate, hdsp,
			     SNDRV_PCM_HW_PARAM_RATE, -1);
	FUNC5(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
			     snd_hdsp_hw_rule_rate_out_channels, hdsp,
			     SNDRV_PCM_HW_PARAM_CHANNELS, -1);

	hdsp->creg_spdif_stream = hdsp->creg_spdif;
	hdsp->spdif_ctl->vd[0].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
	FUNC2(hdsp->card, SNDRV_CTL_EVENT_MASK_VALUE |
		       SNDRV_CTL_EVENT_MASK_INFO, &hdsp->spdif_ctl->id);
	return 0;
}