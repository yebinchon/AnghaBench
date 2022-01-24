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
struct snd_pcm_substream {size_t stream; struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; } ;
struct snd_pcm_runtime {struct azx_dev* private_data; TYPE_2__ hw; } ;
struct TYPE_3__ {int (* open ) (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ;int /*<<< orphan*/  (* close ) (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ;} ;
struct hda_pcm_stream {TYPE_1__ ops; int /*<<< orphan*/  rates; int /*<<< orphan*/  formats; int /*<<< orphan*/  channels_max; int /*<<< orphan*/  channels_min; } ;
struct azx_pcm {int /*<<< orphan*/  codec; struct azx* chip; struct hda_pcm_stream** hinfo; } ;
struct azx_dev {scalar_t__ running; struct snd_pcm_substream* substream; } ;
struct azx {int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  reg_lock; scalar_t__ align_buffer_size; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_BYTES ; 
 struct azx_dev* FUNC0 (struct azx*,struct snd_pcm_substream*) ; 
 TYPE_2__ azx_pcm_hw ; 
 int /*<<< orphan*/  FUNC1 (struct azx_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm_runtime*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_pcm_substream*) ; 
 struct azx_pcm* FUNC11 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC14 (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC15 (struct hda_pcm_stream*,int /*<<< orphan*/ ,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC16(struct snd_pcm_substream *substream)
{
	struct azx_pcm *apcm = FUNC11(substream);
	struct hda_pcm_stream *hinfo = apcm->hinfo[substream->stream];
	struct azx *chip = apcm->chip;
	struct azx_dev *azx_dev;
	struct snd_pcm_runtime *runtime = substream->runtime;
	unsigned long flags;
	int err;
	int buff_step;

	FUNC2(&chip->open_mutex);
	azx_dev = FUNC0(chip, substream);
	if (azx_dev == NULL) {
		FUNC3(&chip->open_mutex);
		return -EBUSY;
	}
	runtime->hw = azx_pcm_hw;
	runtime->hw.channels_min = hinfo->channels_min;
	runtime->hw.channels_max = hinfo->channels_max;
	runtime->hw.formats = hinfo->formats;
	runtime->hw.rates = hinfo->rates;
	FUNC9(runtime);
	FUNC7(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
	if (chip->align_buffer_size)
		/* constrain buffer sizes to be multiple of 128
		   bytes. This is more efficient in terms of memory
		   access but isn't required by the HDA spec and
		   prevents users from specifying exact period/buffer
		   sizes. For example for 44.1kHz, a period size set
		   to 20ms will be rounded to 19.59ms. */
		buff_step = 128;
	else
		/* Don't enforce steps on buffer sizes, still need to
		   be multiple of 4 bytes (HDA spec). Tested on Intel
		   HDA controllers, may not work on all devices where
		   option needs to be disabled */
		buff_step = 4;

	FUNC8(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
				   buff_step);
	FUNC8(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
				   buff_step);
	FUNC6(apcm->codec);
	err = hinfo->ops.open(hinfo, apcm->codec, substream);
	if (err < 0) {
		FUNC1(azx_dev);
		FUNC5(apcm->codec);
		FUNC3(&chip->open_mutex);
		return err;
	}
	FUNC9(runtime);
	/* sanity check */
	if (FUNC4(!runtime->hw.channels_min) ||
	    FUNC4(!runtime->hw.channels_max) ||
	    FUNC4(!runtime->hw.formats) ||
	    FUNC4(!runtime->hw.rates)) {
		FUNC1(azx_dev);
		hinfo->ops.close(hinfo, apcm->codec, substream);
		FUNC5(apcm->codec);
		FUNC3(&chip->open_mutex);
		return -EINVAL;
	}
	FUNC12(&chip->reg_lock, flags);
	azx_dev->substream = substream;
	azx_dev->running = 0;
	FUNC13(&chip->reg_lock, flags);

	runtime->private_data = azx_dev;
	FUNC10(substream);
	FUNC3(&chip->open_mutex);
	return 0;
}