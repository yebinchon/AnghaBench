#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct omap_runtime_data* private_data; } ;
struct omap_runtime_data {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 struct omap_runtime_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap_pcm_hardware ; 
 int FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct omap_runtime_data *prtd;
	int ret;

	FUNC2(substream, &omap_pcm_hardware);

	/* Ensure that buffer size is a multiple of period size */
	ret = FUNC1(runtime,
					    SNDRV_PCM_HW_PARAM_PERIODS);
	if (ret < 0)
		goto out;

	prtd = FUNC0(sizeof(*prtd), GFP_KERNEL);
	if (prtd == NULL) {
		ret = -ENOMEM;
		goto out;
	}
	FUNC3(&prtd->lock);
	runtime->private_data = prtd;

out:
	return ret;
}