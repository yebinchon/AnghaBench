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
struct voice {struct snd_pcm_substream* substream; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; struct voice* private_data; } ;
struct sis7019 {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 struct voice* FUNC0 (struct sis7019*) ; 
 int /*<<< orphan*/  sis_playback_hw_info ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_substream*) ; 
 struct sis7019* FUNC3 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct sis7019 *sis = FUNC3(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct voice *voice;

	voice = FUNC0(sis);
	if (!voice)
		return -EAGAIN;

	voice->substream = substream;
	runtime->private_data = voice;
	runtime->hw = sis_playback_hw_info;
	FUNC1(runtime, SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
						9, 0xfff9);
	FUNC1(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
						9, 0xfff9);
	FUNC2(substream);
	return 0;
}