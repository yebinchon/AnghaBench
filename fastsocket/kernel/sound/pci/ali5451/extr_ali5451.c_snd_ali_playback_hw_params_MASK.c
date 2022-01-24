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
struct snd_pcm_runtime {struct snd_ali_voice* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_ali_voice {struct snd_ali_voice* extra; struct snd_pcm_substream* substream; } ;
struct snd_ali {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SNDRV_ALI_VOICE_TYPE_PCM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_pcm_hw_params*) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 struct snd_ali_voice* FUNC3 (struct snd_ali*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_ali*,struct snd_ali_voice*) ; 
 int FUNC5 (struct snd_pcm_substream*,int /*<<< orphan*/ ) ; 
 struct snd_ali* FUNC6 (struct snd_pcm_substream*) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
				      struct snd_pcm_hw_params *hw_params)
{
	struct snd_ali *codec = FUNC6(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct snd_ali_voice *pvoice = runtime->private_data;
	struct snd_ali_voice *evoice = pvoice->extra;
	int err;

	err = FUNC5(substream,
				       FUNC0(hw_params));
	if (err < 0)
		return err;
	
	/* voice management */

	if (FUNC1(hw_params) / 2 !=
	    FUNC2(hw_params)) {
		if (!evoice) {
			evoice = FUNC3(codec,
						     SNDRV_ALI_VOICE_TYPE_PCM,
						     0, -1);
			if (!evoice)
				return -ENOMEM;
			pvoice->extra = evoice;
			evoice->substream = substream;
		}
	} else {
		if (evoice) {
			FUNC4(codec, evoice);
			pvoice->extra = evoice = NULL;
		}
	}

	return 0;
}