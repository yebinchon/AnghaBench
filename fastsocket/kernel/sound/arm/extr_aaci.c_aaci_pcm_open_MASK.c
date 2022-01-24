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
struct snd_pcm_substream {scalar_t__ stream; int /*<<< orphan*/  runtime; struct aaci* private_data; } ;
struct aaci {int /*<<< orphan*/  capture; int /*<<< orphan*/  playback; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int FUNC0 (struct aaci*,struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aaci_rule_channels ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct aaci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct aaci *aaci = substream->private_data;
	int ret;

	/*
	 * Add rule describing channel dependency.
	 */
	ret = FUNC1(substream->runtime, 0,
				  SNDRV_PCM_HW_PARAM_CHANNELS,
				  aaci_rule_channels, aaci,
				  SNDRV_PCM_HW_PARAM_CHANNELS, -1);
	if (ret)
		return ret;

	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
		ret = FUNC0(aaci, substream, &aaci->playback);
	} else {
		ret = FUNC0(aaci, substream, &aaci->capture);
	}
	return ret;
}