#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {int /*<<< orphan*/  mmap_count; } ;
struct snd_pcm_oss_file {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_mask {int dummy; } ;
struct TYPE_4__ {int direct; } ;
struct TYPE_5__ {TYPE_1__ setup; } ;
struct TYPE_6__ {TYPE_2__ oss; } ;

/* Variables and functions */
 int AFMT_MU_LAW ; 
 int AFMT_S16_BE ; 
 int AFMT_S16_LE ; 
 int AFMT_S24_BE ; 
 int AFMT_S24_LE ; 
 int AFMT_S24_PACKED ; 
 int AFMT_S32_BE ; 
 int AFMT_S32_LE ; 
 int AFMT_S8 ; 
 int AFMT_U16_BE ; 
 int AFMT_U16_LE ; 
 int AFMT_U8 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_mask* FUNC2 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_pcm_hw_params*) ; 
 struct snd_pcm_hw_params* FUNC4 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (struct snd_pcm_substream*) ; 
 scalar_t__ FUNC6 (struct snd_mask*,int) ; 
 int FUNC7 (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct snd_pcm_oss_file*,struct snd_pcm_substream**) ; 

__attribute__((used)) static int FUNC10(struct snd_pcm_oss_file *pcm_oss_file)
{
	struct snd_pcm_substream *substream;
	int err;
	int direct;
	struct snd_pcm_hw_params *params;
	unsigned int formats = 0;
	struct snd_mask format_mask;
	int fmt;

	if ((err = FUNC9(pcm_oss_file, &substream)) < 0)
		return err;
	if (FUNC1(&substream->mmap_count))
		direct = 1;
	else
		direct = FUNC5(substream)->oss.setup.direct;
	if (!direct)
		return AFMT_MU_LAW | AFMT_U8 |
		       AFMT_S16_LE | AFMT_S16_BE |
		       AFMT_S8 | AFMT_U16_LE |
		       AFMT_U16_BE |
			AFMT_S32_LE | AFMT_S32_BE |
			AFMT_S24_LE | AFMT_S24_BE |
			AFMT_S24_PACKED;
	params = FUNC4(sizeof(*params), GFP_KERNEL);
	if (!params)
		return -ENOMEM;
	FUNC0(params);
	err = FUNC7(substream, params);
	format_mask = *FUNC2(params, SNDRV_PCM_HW_PARAM_FORMAT); 
	FUNC3(params);
	if (err < 0)
		return err;
	for (fmt = 0; fmt < 32; ++fmt) {
		if (FUNC6(&format_mask, fmt)) {
			int f = FUNC8(fmt);
			if (f >= 0)
				formats |= f;
		}
	}
	return formats;
}