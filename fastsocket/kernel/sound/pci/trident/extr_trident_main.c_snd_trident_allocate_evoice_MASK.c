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
struct snd_trident_voice {struct snd_trident_voice* extra; struct snd_pcm_substream* substream; } ;
struct snd_trident {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_trident_voice* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_TRIDENT_VOICE_TYPE_PCM ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 struct snd_trident* FUNC2 (struct snd_pcm_substream*) ; 
 struct snd_trident_voice* FUNC3 (struct snd_trident*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_trident*,struct snd_trident_voice*) ; 

__attribute__((used)) static int FUNC5(struct snd_pcm_substream *substream,
				       struct snd_pcm_hw_params *hw_params)
{
	struct snd_trident *trident = FUNC2(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_trident_voice *voice = runtime->private_data;
	struct snd_trident_voice *evoice = voice->extra;

	/* voice management */

	if (FUNC0(hw_params) / 2 != FUNC1(hw_params)) {
		if (evoice == NULL) {
			evoice = FUNC3(trident, SNDRV_TRIDENT_VOICE_TYPE_PCM, 0, 0);
			if (evoice == NULL)
				return -ENOMEM;
			voice->extra = evoice;
			evoice->substream = substream;
		}
	} else {
		if (evoice != NULL) {
			FUNC4(trident, evoice);
			voice->extra = evoice = NULL;
		}
	}

	return 0;
}