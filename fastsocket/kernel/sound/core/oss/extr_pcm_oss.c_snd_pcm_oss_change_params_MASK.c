#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_sw_params {int start_threshold; int stop_threshold; int period_step; int avail_min; void* silence_size; void* silence_threshold; int /*<<< orphan*/  tstamp_mode; } ;
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  mmap_count; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int boundary; int buffer_size; int period_size; int /*<<< orphan*/  dma_bytes; scalar_t__ dma_area; int /*<<< orphan*/  format; } ;
struct snd_pcm_plugin {int dummy; } ;
struct snd_pcm_hw_params {int start_threshold; int stop_threshold; int period_step; int avail_min; void* silence_size; void* silence_threshold; int /*<<< orphan*/  tstamp_mode; } ;
struct snd_mask {int dummy; } ;
typedef  size_t ssize_t ;
typedef  void* snd_pcm_uframes_t ;
struct TYPE_8__ {int rate; int channels; size_t period_bytes; int periods; size_t buffer_bytes; int prepare; int /*<<< orphan*/  params_lock; int /*<<< orphan*/  period_frames; scalar_t__ buffer_used; scalar_t__ params; int /*<<< orphan*/  buffer; int /*<<< orphan*/  format; scalar_t__ plugin_first; scalar_t__ trigger; } ;
struct TYPE_10__ {TYPE_3__ oss; } ;
struct TYPE_6__ {int direct; scalar_t__ nosilence; } ;
struct TYPE_7__ {TYPE_1__ setup; } ;
struct TYPE_9__ {TYPE_2__ oss; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SNDRV_PCM_ACCESS_MMAP_INTERLEAVED ; 
 int SNDRV_PCM_ACCESS_RW_INTERLEAVED ; 
 int SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ; 
 int SNDRV_PCM_FORMAT_LAST ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_ACCESS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_DROP ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_HW_PARAMS ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_SW_PARAMS ; 
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SNDRV_PCM_TSTAMP_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_sw_params*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_substream*,struct snd_pcm_sw_params*,int) ; 
 struct snd_mask* FUNC7 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_sw_params*) ; 
 struct snd_pcm_sw_params* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_sw_params*,struct snd_pcm_sw_params*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC14 (struct snd_pcm_runtime*) ; 
 TYPE_4__* FUNC15 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_pcm_sw_params*) ; 
 size_t FUNC17 (struct snd_pcm_sw_params*) ; 
 int FUNC18 (struct snd_pcm_sw_params*) ; 
 int FUNC19 (struct snd_pcm_sw_params*) ; 
 size_t FUNC20 (struct snd_pcm_sw_params*) ; 
 int FUNC21 (struct snd_pcm_sw_params*) ; 
 int FUNC22 (struct snd_pcm_sw_params*) ; 
 int /*<<< orphan*/  FUNC23 (char*,size_t,size_t,...) ; 
 int /*<<< orphan*/  FUNC24 (struct snd_mask*) ; 
 int /*<<< orphan*/  FUNC25 (struct snd_mask*,int) ; 
 scalar_t__ FUNC26 (struct snd_mask*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct snd_pcm_substream*,size_t) ; 
 int FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC30 (struct snd_pcm_substream*,struct snd_pcm_sw_params*,int /*<<< orphan*/ ,struct snd_mask*) ; 
 int FUNC31 (struct snd_pcm_substream*,struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC32 (struct snd_pcm_substream*,int /*<<< orphan*/ ,struct snd_pcm_sw_params*) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int FUNC35 (struct snd_pcm_substream*,struct snd_pcm_sw_params*,struct snd_pcm_sw_params*) ; 
 int /*<<< orphan*/  FUNC36 (struct snd_pcm_substream*) ; 
 int FUNC37 (struct snd_pcm_substream*,size_t) ; 
 size_t FUNC38 (struct snd_pcm_substream*,size_t) ; 
 int FUNC39 (struct snd_pcm_substream*,struct snd_pcm_sw_params*,struct snd_pcm_sw_params*) ; 
 int FUNC40 (int,struct snd_mask*) ; 
 int FUNC41 (struct snd_pcm_substream*,size_t) ; 
 int FUNC42 (struct snd_pcm_plugin*) ; 
 int FUNC43 (struct snd_pcm_substream*,struct snd_pcm_sw_params*,struct snd_pcm_plugin**) ; 
 int FUNC44 (struct snd_pcm_plugin*) ; 
 int /*<<< orphan*/  FUNC45 (char*,...) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (size_t) ; 

__attribute__((used)) static int FUNC48(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_pcm_hw_params *params, *sparams;
	struct snd_pcm_sw_params *sw_params;
	ssize_t oss_buffer_size, oss_period_size;
	size_t oss_frame_size;
	int err;
	int direct;
	int format, sformat, n;
	struct snd_mask sformat_mask;
	struct snd_mask mask;

	if (FUNC12(&FUNC14(runtime)->oss.params_lock))
		return -EINTR;
	sw_params = FUNC9(sizeof(*sw_params), GFP_KERNEL);
	params = FUNC9(sizeof(*params), GFP_KERNEL);
	sparams = FUNC9(sizeof(*sparams), GFP_KERNEL);
	if (!sw_params || !params || !sparams) {
		FUNC45("No memory\n");
		err = -ENOMEM;
		goto failure;
	}

	if (FUNC4(&substream->mmap_count))
		direct = 1;
	else
		direct = FUNC15(substream)->oss.setup.direct;

	FUNC3(sparams);
	FUNC2(sparams, SNDRV_PCM_HW_PARAM_PERIODS);
	FUNC0(sparams, SNDRV_PCM_HW_PARAM_PERIODS, 2, 0);
	FUNC24(&mask);
	if (FUNC4(&substream->mmap_count))
		FUNC25(&mask, SNDRV_PCM_ACCESS_MMAP_INTERLEAVED);
	else {
		FUNC25(&mask, SNDRV_PCM_ACCESS_RW_INTERLEAVED);
		if (!direct)
			FUNC25(&mask, SNDRV_PCM_ACCESS_RW_NONINTERLEAVED);
	}
	err = FUNC30(substream, sparams, SNDRV_PCM_HW_PARAM_ACCESS, &mask);
	if (err < 0) {
		FUNC45("No usable accesses\n");
		err = -EINVAL;
		goto failure;
	}
	FUNC6(substream, sparams, FUNC14(runtime)->oss.rate);
	FUNC31(substream, sparams, SNDRV_PCM_HW_PARAM_CHANNELS, FUNC14(runtime)->oss.channels, NULL);

	format = FUNC33(FUNC14(runtime)->oss.format);

	sformat_mask = *FUNC7(sparams, SNDRV_PCM_HW_PARAM_FORMAT);
	if (direct)
		sformat = format;
	else
		sformat = FUNC40(format, &sformat_mask);

	if (sformat < 0 || !FUNC26(&sformat_mask, sformat)) {
		for (sformat = 0; sformat <= SNDRV_PCM_FORMAT_LAST; sformat++) {
			if (FUNC26(&sformat_mask, sformat) &&
			    FUNC34(sformat) >= 0)
				break;
		}
		if (sformat > SNDRV_PCM_FORMAT_LAST) {
			FUNC45("Cannot find a format!!!\n");
			err = -EINVAL;
			goto failure;
		}
	}
	err = FUNC1(sparams, SNDRV_PCM_HW_PARAM_FORMAT, sformat, 0);
	if (err < 0)
		goto failure;

	if (direct) {
		FUNC10(params, sparams, sizeof(*params));
	} else {
		FUNC3(params);
		FUNC1(params, SNDRV_PCM_HW_PARAM_ACCESS,
				      SNDRV_PCM_ACCESS_RW_INTERLEAVED, 0);
		FUNC1(params, SNDRV_PCM_HW_PARAM_FORMAT,
				      FUNC33(FUNC14(runtime)->oss.format), 0);
		FUNC1(params, SNDRV_PCM_HW_PARAM_CHANNELS,
				      FUNC14(runtime)->oss.channels, 0);
		FUNC1(params, SNDRV_PCM_HW_PARAM_RATE,
				      FUNC14(runtime)->oss.rate, 0);
		FUNC23("client: access = %i, format = %i, channels = %i, rate = %i\n",
			 FUNC16(params), FUNC19(params),
			 FUNC18(params), FUNC22(params));
	}
	FUNC23("slave: access = %i, format = %i, channels = %i, rate = %i\n",
		 FUNC16(sparams), FUNC19(sparams),
		 FUNC18(sparams), FUNC22(sparams));

	oss_frame_size = FUNC28(FUNC19(params)) *
			 FUNC18(params) / 8;

#ifdef CONFIG_SND_PCM_OSS_PLUGINS
	snd_pcm_oss_plugin_clear(substream);
	if (!direct) {
		/* add necessary plugins */
		snd_pcm_oss_plugin_clear(substream);
		if ((err = snd_pcm_plug_format_plugins(substream,
						       params, 
						       sparams)) < 0) {
			snd_printd("snd_pcm_plug_format_plugins failed: %i\n", err);
			snd_pcm_oss_plugin_clear(substream);
			goto failure;
		}
		if (oss_runtime(runtime)->oss.plugin_first) {
			struct snd_pcm_plugin *plugin;
			if ((err = snd_pcm_plugin_build_io(substream, sparams, &plugin)) < 0) {
				snd_printd("snd_pcm_plugin_build_io failed: %i\n", err);
				snd_pcm_oss_plugin_clear(substream);
				goto failure;
			}
			if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
				err = snd_pcm_plugin_append(plugin);
			} else {
				err = snd_pcm_plugin_insert(plugin);
			}
			if (err < 0) {
				snd_pcm_oss_plugin_clear(substream);
				goto failure;
			}
		}
	}
#endif

	err = FUNC35(substream, params, sparams);
	if (err < 0)
		goto failure;

	n = FUNC41(substream, FUNC14(runtime)->oss.period_bytes / oss_frame_size);
	err = FUNC31(substream, sparams, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, n, NULL);
	if (err < 0)
		goto failure;

	err = FUNC31(substream, sparams, SNDRV_PCM_HW_PARAM_PERIODS,
				     FUNC14(runtime)->oss.periods, NULL);
	if (err < 0)
		goto failure;

	FUNC32(substream, SNDRV_PCM_IOCTL_DROP, NULL);

	if ((err = FUNC32(substream, SNDRV_PCM_IOCTL_HW_PARAMS, sparams)) < 0) {
		FUNC45("HW_PARAMS failed: %i\n", err);
		goto failure;
	}

	FUNC11(sw_params, 0, sizeof(*sw_params));
	if (FUNC14(runtime)->oss.trigger) {
		sw_params->start_threshold = 1;
	} else {
		sw_params->start_threshold = runtime->boundary;
	}
	if (FUNC4(&substream->mmap_count) ||
	    substream->stream == SNDRV_PCM_STREAM_CAPTURE)
		sw_params->stop_threshold = runtime->boundary;
	else
		sw_params->stop_threshold = runtime->buffer_size;
	sw_params->tstamp_mode = SNDRV_PCM_TSTAMP_NONE;
	sw_params->period_step = 1;
	sw_params->avail_min = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
		1 : runtime->period_size;
	if (FUNC4(&substream->mmap_count) ||
	    FUNC15(substream)->oss.setup.nosilence) {
		sw_params->silence_threshold = 0;
		sw_params->silence_size = 0;
	} else {
		snd_pcm_uframes_t frames;
		frames = runtime->period_size + 16;
		if (frames > runtime->buffer_size)
			frames = runtime->buffer_size;
		sw_params->silence_threshold = frames;
		sw_params->silence_size = frames;
	}

	if ((err = FUNC32(substream, SNDRV_PCM_IOCTL_SW_PARAMS, sw_params)) < 0) {
		FUNC45("SW_PARAMS failed: %i\n", err);
		goto failure;
	}

	FUNC14(runtime)->oss.periods = FUNC21(sparams);
	oss_period_size = FUNC38(substream, FUNC20(sparams));
	if (oss_period_size < 0) {
		err = -EINVAL;
		goto failure;
	}
#ifdef CONFIG_SND_PCM_OSS_PLUGINS
	if (oss_runtime(runtime)->oss.plugin_first) {
		err = snd_pcm_plug_alloc(substream, oss_period_size);
		if (err < 0)
			goto failure;
	}
#endif
	oss_period_size *= oss_frame_size;

	oss_buffer_size = oss_period_size * FUNC14(runtime)->oss.periods;
	if (oss_buffer_size < 0) {
		err = -EINVAL;
		goto failure;
	}

	FUNC14(runtime)->oss.period_bytes = oss_period_size;
	FUNC14(runtime)->oss.buffer_bytes = oss_buffer_size;

	FUNC23("oss: period bytes = %i, buffer bytes = %i\n",
		 FUNC14(runtime)->oss.period_bytes,
		 FUNC14(runtime)->oss.buffer_bytes);
	FUNC23("slave: period_size = %i, buffer_size = %i\n",
		 FUNC20(sparams),
		 FUNC17(sparams));

	FUNC14(runtime)->oss.format = FUNC34(FUNC19(params));
	FUNC14(runtime)->oss.channels = FUNC18(params);
	FUNC14(runtime)->oss.rate = FUNC22(params);

	FUNC46(FUNC14(runtime)->oss.buffer);
	FUNC14(runtime)->oss.buffer = FUNC47(FUNC14(runtime)->oss.period_bytes);
	if (!FUNC14(runtime)->oss.buffer) {
		err = -ENOMEM;
		goto failure;
	}

	FUNC14(runtime)->oss.params = 0;
	FUNC14(runtime)->oss.prepare = 1;
	FUNC14(runtime)->oss.buffer_used = 0;
	if (runtime->dma_area)
		FUNC29(runtime->format, runtime->dma_area, FUNC5(runtime, runtime->dma_bytes));

	FUNC14(runtime)->oss.period_frames = FUNC27(substream, oss_period_size);

	err = 0;
failure:
	FUNC8(sw_params);
	FUNC8(params);
	FUNC8(sparams);
	FUNC13(&FUNC14(runtime)->oss.params_lock);
	return err;
}