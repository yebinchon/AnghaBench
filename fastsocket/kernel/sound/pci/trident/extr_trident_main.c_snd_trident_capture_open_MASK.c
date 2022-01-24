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
struct snd_trident_voice {int capture; struct snd_pcm_substream* substream; } ;
struct snd_trident {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int /*<<< orphan*/  hw; int /*<<< orphan*/  private_free; struct snd_trident_voice* private_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_BUFFER_SIZE ; 
 int /*<<< orphan*/  SNDRV_TRIDENT_VOICE_TYPE_PCM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_substream*) ; 
 struct snd_trident* FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_trident_voice* FUNC3 (struct snd_trident*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_trident_capture ; 
 int /*<<< orphan*/  snd_trident_pcm_free_substream ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream)
{
	struct snd_trident *trident = FUNC2(substream);
	struct snd_trident_voice *voice;
	struct snd_pcm_runtime *runtime = substream->runtime;

	voice = FUNC3(trident, SNDRV_TRIDENT_VOICE_TYPE_PCM, 0, 0);
	if (voice == NULL)
		return -EAGAIN;
	voice->capture = 1;
	voice->substream = substream;
	runtime->private_data = voice;
	runtime->private_free = snd_trident_pcm_free_substream;
	runtime->hw = snd_trident_capture;
	FUNC1(substream);
	FUNC0(runtime, SNDRV_PCM_HW_PARAM_BUFFER_SIZE, 0, 64*1024);
	return 0;
}