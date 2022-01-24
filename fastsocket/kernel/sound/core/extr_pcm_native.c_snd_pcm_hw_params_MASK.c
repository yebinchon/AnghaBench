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
struct TYPE_6__ {int /*<<< orphan*/  oss; } ;
struct snd_pcm_substream2 {TYPE_2__ oss; } ;
struct snd_pcm_substream {TYPE_4__* ops; int /*<<< orphan*/  latency_id; int /*<<< orphan*/  mmap_count; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int channels; int buffer_size; unsigned int sample_bits; unsigned int frame_bits; unsigned int byte_align; int min_align; int period_step; int start_threshold; int stop_threshold; int boundary; scalar_t__ silence_size; scalar_t__ silence_threshold; int /*<<< orphan*/  period_size; TYPE_3__* control; int /*<<< orphan*/  tstamp_mode; int /*<<< orphan*/  format; int /*<<< orphan*/  rate_den; int /*<<< orphan*/  rate_num; int /*<<< orphan*/  info; int /*<<< orphan*/  periods; int /*<<< orphan*/  rate; int /*<<< orphan*/  subformat; int /*<<< orphan*/  access; TYPE_1__* status; } ;
struct snd_pcm_hw_params {unsigned int rmask; int /*<<< orphan*/  rate_den; int /*<<< orphan*/  rate_num; int /*<<< orphan*/  info; } ;
typedef  int snd_pcm_uframes_t ;
struct TYPE_8__ {int (* hw_params ) (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;int /*<<< orphan*/  (* hw_free ) (struct snd_pcm_substream*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  avail_min; } ;
struct TYPE_5__ {int state; } ;

/* Variables and functions */
 int EBADFD ; 
 int ENXIO ; 
 int LONG_MAX ; 
 scalar_t__ FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
#define  SNDRV_PCM_STATE_OPEN 130 
#define  SNDRV_PCM_STATE_PREPARED 129 
#define  SNDRV_PCM_STATE_SETUP 128 
 int /*<<< orphan*/  SNDRV_PCM_TSTAMP_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 unsigned int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_hw_params*) ; 
 int FUNC10 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC15 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_pcm_substream*,int const) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_pcm_substream*) ; 
 int FUNC20 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC21 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC22(struct snd_pcm_substream *substream,
			     struct snd_pcm_hw_params *params)
{
	struct snd_pcm_runtime *runtime;
	int err, usecs;
	unsigned int bits;
	snd_pcm_uframes_t frames;

	if (FUNC0(substream))
		return -ENXIO;
	runtime = substream->runtime;
	FUNC17(substream);
	switch (runtime->status->state) {
	case SNDRV_PCM_STATE_OPEN:
	case SNDRV_PCM_STATE_SETUP:
	case SNDRV_PCM_STATE_PREPARED:
		break;
	default:
		FUNC18(substream);
		return -EBADFD;
	}
	FUNC18(substream);
#if defined(CONFIG_SND_PCM_OSS) || defined(CONFIG_SND_PCM_OSS_MODULE)
	if (!((struct snd_pcm_substream2 *)substream)->oss.oss)
#endif
		if (FUNC1(&substream->mmap_count))
			return -EBADFD;

	params->rmask = ~0U;
	err = FUNC15(substream, params);
	if (err < 0)
		goto _error;

	err = FUNC14(substream, params);
	if (err < 0)
		goto _error;

	if (substream->ops->hw_params != NULL) {
		err = substream->ops->hw_params(substream, params);
		if (err < 0)
			goto _error;
	}

	runtime->access = FUNC2(params);
	runtime->format = FUNC5(params);
	runtime->subformat = FUNC9(params);
	runtime->channels = FUNC4(params);
	runtime->rate = FUNC8(params);
	runtime->period_size = FUNC6(params);
	runtime->periods = FUNC7(params);
	runtime->buffer_size = FUNC3(params);
	runtime->info = params->info;
	runtime->rate_num = params->rate_num;
	runtime->rate_den = params->rate_den;

	bits = FUNC13(runtime->format);
	runtime->sample_bits = bits;
	bits *= runtime->channels;
	runtime->frame_bits = bits;
	frames = 1;
	while (bits % 8 != 0) {
		bits *= 2;
		frames *= 2;
	}
	runtime->byte_align = bits / 8;
	runtime->min_align = frames;

	/* Default sw params */
	runtime->tstamp_mode = SNDRV_PCM_TSTAMP_NONE;
	runtime->period_step = 1;
	runtime->control->avail_min = runtime->period_size;
	runtime->start_threshold = 1;
	runtime->stop_threshold = runtime->buffer_size;
	runtime->silence_threshold = 0;
	runtime->silence_size = 0;
	runtime->boundary = runtime->buffer_size;
	while (runtime->boundary * 2 <= LONG_MAX - runtime->buffer_size)
		runtime->boundary *= 2;

	FUNC19(substream);
	FUNC16(substream, SNDRV_PCM_STATE_SETUP);

	FUNC12(PM_QOS_CPU_DMA_LATENCY,
				substream->latency_id);
	if ((usecs = FUNC10(runtime)) >= 0)
		FUNC11(PM_QOS_CPU_DMA_LATENCY,
					substream->latency_id, usecs);
	return 0;
 _error:
	/* hardware might be unuseable from this time,
	   so we force application to retry to set
	   the correct hardware parameter settings */
	FUNC16(substream, SNDRV_PCM_STATE_OPEN);
	if (substream->ops->hw_free != NULL)
		substream->ops->hw_free(substream);
	return err;
}