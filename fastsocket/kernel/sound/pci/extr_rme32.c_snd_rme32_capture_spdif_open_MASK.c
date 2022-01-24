#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rates; int rate_max; int rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct rme32 {scalar_t__ fullduplex_mode; int /*<<< orphan*/  lock; struct snd_pcm_substream* capture_substream; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct rme32*) ; 
 int SNDRV_PCM_RATE_88200 ; 
 int SNDRV_PCM_RATE_96000 ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct rme32* FUNC3 (struct snd_pcm_substream*) ; 
 int FUNC4 (struct rme32*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rme32*,struct snd_pcm_runtime*) ; 
 TYPE_1__ snd_rme32_spdif_fd_info ; 
 TYPE_1__ snd_rme32_spdif_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream)
{
	int isadat, rate;
	struct rme32 *rme32 = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;

	FUNC2(substream);

	FUNC6(&rme32->lock);
        if (rme32->capture_substream != NULL) {
		FUNC7(&rme32->lock);
                return -EBUSY;
        }
	rme32->capture_substream = substream;
	FUNC7(&rme32->lock);

	if (rme32->fullduplex_mode)
		runtime->hw = snd_rme32_spdif_fd_info;
	else
		runtime->hw = snd_rme32_spdif_info;
	if (FUNC0(rme32)) {
		runtime->hw.rates |= SNDRV_PCM_RATE_88200 | SNDRV_PCM_RATE_96000;
		runtime->hw.rate_max = 96000;
	}
	if ((rate = FUNC4(rme32, &isadat)) > 0) {
		if (isadat) {
			return -EIO;
		}
		runtime->hw.rates = FUNC1(rate);
		runtime->hw.rate_min = rate;
		runtime->hw.rate_max = rate;
	}

	FUNC5(rme32, runtime);

	return 0;
}