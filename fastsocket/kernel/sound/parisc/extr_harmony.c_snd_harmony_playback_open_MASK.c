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
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct snd_harmony {struct snd_pcm_substream* psubs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraint_rates ; 
 int /*<<< orphan*/  snd_harmony_playback ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct snd_harmony* FUNC2 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int 
FUNC3(struct snd_pcm_substream *ss)
{
	struct snd_harmony *h = FUNC2(ss);
	struct snd_pcm_runtime *rt = ss->runtime;
	int err;
	
	h->psubs = ss;
	rt->hw = snd_harmony_playback;
	FUNC1(rt, 0, SNDRV_PCM_HW_PARAM_RATE, 
				   &hw_constraint_rates);
	
	err = FUNC0(rt, SNDRV_PCM_HW_PARAM_PERIODS);
	if (err < 0)
		return err;
	
	return 0;
}