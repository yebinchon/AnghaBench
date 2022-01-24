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
struct snd_pcm_substream {int /*<<< orphan*/  mmap_count; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_8__ {size_t mmap_bytes; int fragshift; int subdivision; size_t maxfrags; size_t period_bytes; int period_frames; size_t periods; } ;
struct TYPE_10__ {TYPE_3__ oss; } ;
struct TYPE_6__ {int period_size; int periods; } ;
struct TYPE_7__ {TYPE_1__ setup; } ;
struct TYPE_9__ {TYPE_2__ oss; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (size_t) ; 
 TYPE_5__* FUNC2 (struct snd_pcm_runtime*) ; 
 TYPE_4__* FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_hw_params*) ; 
 int FUNC6 (struct snd_pcm_hw_params*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC9 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC10 (struct snd_pcm_substream*,size_t) ; 

__attribute__((used)) static int FUNC11(struct snd_pcm_substream *substream, 
				   struct snd_pcm_hw_params *oss_params,
				   struct snd_pcm_hw_params *slave_params)
{
	size_t s;
	size_t oss_buffer_size, oss_period_size, oss_periods;
	size_t min_period_size, max_period_size;
	struct snd_pcm_runtime *runtime = substream->runtime;
	size_t oss_frame_size;

	oss_frame_size = FUNC7(FUNC5(oss_params)) *
			 FUNC4(oss_params) / 8;

	oss_buffer_size = FUNC10(substream,
						   FUNC8(slave_params, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, NULL)) * oss_frame_size;
	oss_buffer_size = 1 << FUNC1(oss_buffer_size);
	if (FUNC0(&substream->mmap_count)) {
		if (oss_buffer_size > FUNC2(runtime)->oss.mmap_bytes)
			oss_buffer_size = FUNC2(runtime)->oss.mmap_bytes;
	}

	if (FUNC3(substream)->oss.setup.period_size > 16)
		oss_period_size = FUNC3(substream)->oss.setup.period_size;
	else if (FUNC2(runtime)->oss.fragshift) {
		oss_period_size = 1 << FUNC2(runtime)->oss.fragshift;
		if (oss_period_size > oss_buffer_size / 2)
			oss_period_size = oss_buffer_size / 2;
	} else {
		int sd;
		size_t bytes_per_sec = FUNC6(oss_params) * FUNC7(FUNC5(oss_params)) * FUNC4(oss_params) / 8;

		oss_period_size = oss_buffer_size;
		do {
			oss_period_size /= 2;
		} while (oss_period_size > bytes_per_sec);
		if (FUNC2(runtime)->oss.subdivision == 0) {
			sd = 4;
			if (oss_period_size / sd > 4096)
				sd *= 2;
			if (oss_period_size / sd < 4096)
				sd = 1;
		} else
			sd = FUNC2(runtime)->oss.subdivision;
		oss_period_size /= sd;
		if (oss_period_size < 16)
			oss_period_size = 16;
	}

	min_period_size = FUNC10(substream,
						   FUNC9(slave_params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, NULL));
	min_period_size *= oss_frame_size;
	min_period_size = 1 << (FUNC1(min_period_size - 1) + 1);
	if (oss_period_size < min_period_size)
		oss_period_size = min_period_size;

	max_period_size = FUNC10(substream,
						   FUNC8(slave_params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, NULL));
	max_period_size *= oss_frame_size;
	max_period_size = 1 << FUNC1(max_period_size);
	if (oss_period_size > max_period_size)
		oss_period_size = max_period_size;

	oss_periods = oss_buffer_size / oss_period_size;

	if (FUNC3(substream)->oss.setup.periods > 1)
		oss_periods = FUNC3(substream)->oss.setup.periods;

	s = FUNC8(slave_params, SNDRV_PCM_HW_PARAM_PERIODS, NULL);
	if (FUNC2(runtime)->oss.maxfrags && s > FUNC2(runtime)->oss.maxfrags)
		s = FUNC2(runtime)->oss.maxfrags;
	if (oss_periods > s)
		oss_periods = s;

	s = FUNC9(slave_params, SNDRV_PCM_HW_PARAM_PERIODS, NULL);
	if (s < 2)
		s = 2;
	if (oss_periods < s)
		oss_periods = s;

	while (oss_period_size * oss_periods > oss_buffer_size)
		oss_period_size /= 2;

	if (oss_period_size < 16)
		return -EINVAL;
	FUNC2(runtime)->oss.period_bytes = oss_period_size;
	FUNC2(runtime)->oss.period_frames = 1;
	FUNC2(runtime)->oss.periods = oss_periods;
	return 0;
}