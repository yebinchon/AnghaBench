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
struct snd_pcm_runtime {int channels; struct gus_pcm_private* private_data; } ;
struct snd_gus_card {int /*<<< orphan*/  reg_lock; } ;
struct gus_pcm_private {int flags; int memory; TYPE_1__** pvoices; } ;
typedef  unsigned int snd_pcm_uframes_t ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int SNDRV_GF1_PCM_PFLG_ACTIVE ; 
 int /*<<< orphan*/  SNDRV_GF1_VA_CURRENT ; 
 int /*<<< orphan*/  SNDRV_GF1_VB_ADDRESS_CONTROL ; 
 unsigned int FUNC0 (struct snd_pcm_runtime*,unsigned int) ; 
 unsigned char FUNC1 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_gus_card*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_gus_card*,int /*<<< orphan*/ ) ; 
 struct snd_gus_card* FUNC4 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC7(struct snd_pcm_substream *substream)
{
	struct snd_gus_card *gus = FUNC4(substream);
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct gus_pcm_private *pcmp = runtime->private_data;
	unsigned int pos;
	unsigned char voice_ctrl;

	pos = 0;
	FUNC5(&gus->reg_lock);
	if (pcmp->flags & SNDRV_GF1_PCM_PFLG_ACTIVE) {
		FUNC3(gus, pcmp->pvoices[0]->number);
		voice_ctrl = FUNC1(gus, SNDRV_GF1_VB_ADDRESS_CONTROL);
		pos = (FUNC2(gus, SNDRV_GF1_VA_CURRENT, voice_ctrl & 4) >> 4) - pcmp->memory;
		if (substream->runtime->channels > 1)
			pos <<= 1;
		pos = FUNC0(runtime, pos);
	}
	FUNC6(&gus->reg_lock);
	return pos;
}