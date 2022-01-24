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
struct TYPE_2__ {int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; int /*<<< orphan*/  private_free; struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int /*<<< orphan*/  timer; int /*<<< orphan*/  interrupt; struct snd_pcm_substream* substream; scalar_t__ started; } ;
struct ct_atc {int rsr; int msr; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_BYTES ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  ct_atc_pcm_free_substream ; 
 int /*<<< orphan*/  ct_atc_pcm_interrupt ; 
 TYPE_1__ ct_pcm_capture_hw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ct_atc_pcm*) ; 
 int /*<<< orphan*/  FUNC1 (struct ct_atc_pcm*) ; 
 struct ct_atc_pcm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ct_atc* FUNC5 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream)
{
	struct ct_atc *atc = FUNC5(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct ct_atc_pcm *apcm;
	int err;

	apcm = FUNC2(sizeof(*apcm), GFP_KERNEL);
	if (!apcm)
		return -ENOMEM;

	apcm->started = 0;
	apcm->substream = substream;
	apcm->interrupt = ct_atc_pcm_interrupt;
	runtime->private_data = apcm;
	runtime->private_free = ct_atc_pcm_free_substream;
	runtime->hw = ct_pcm_capture_hw;
	runtime->hw.rate_max = atc->rsr * atc->msr;

	err = FUNC3(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0) {
		FUNC1(apcm);
		return err;
	}
	err = FUNC4(runtime,
					   SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
					   1024, UINT_MAX);
	if (err < 0) {
		FUNC1(apcm);
		return err;
	}

	apcm->timer = FUNC0(atc->timer, apcm);
	if (!apcm->timer)
		return -ENOMEM;

	return 0;
}