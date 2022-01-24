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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* open ) (struct snd_ice1712*,struct snd_pcm_substream*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct snd_ice1712 {TYPE_2__ spdif; struct snd_pcm_substream* playback_pro_substream; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  hw_constraints_rates ; 
 int /*<<< orphan*/  snd_ice1712_playback_pro ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_ice1712* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ice1712*,struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ice1712 *ice = FUNC3(substream);

	ice->playback_pro_substream = substream;
	runtime->hw = snd_ice1712_playback_pro;
	FUNC2(substream);
	FUNC1(runtime, 0, 32, 24);
	FUNC0(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hw_constraints_rates);

	if (ice->spdif.ops.open)
		ice->spdif.ops.open(ice, substream);

	return 0;
}