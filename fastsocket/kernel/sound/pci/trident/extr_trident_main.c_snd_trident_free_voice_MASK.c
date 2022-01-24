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
struct snd_trident_voice {void (* private_free ) (struct snd_trident_voice*) ;int /*<<< orphan*/ * extra; int /*<<< orphan*/ * substream; int /*<<< orphan*/ * sample_ops; scalar_t__ spdif; scalar_t__ capture; scalar_t__ midi; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; int /*<<< orphan*/  number; int /*<<< orphan*/ * private_data; } ;
struct snd_trident {int /*<<< orphan*/  voice_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct snd_trident * trident, struct snd_trident_voice *voice)
{
	unsigned long flags;
	void (*private_free)(struct snd_trident_voice *);
	void *private_data;

	if (voice == NULL || !voice->use)
		return;
	FUNC0(trident, voice->number, voice->number);
	FUNC3(&trident->voice_alloc, flags);
	private_free = voice->private_free;
	private_data = voice->private_data;
	voice->private_free = NULL;
	voice->private_data = NULL;
	if (voice->pcm)
		FUNC1(trident, voice->number);
	if (voice->synth)
		FUNC2(trident, voice->number);
	voice->use = voice->pcm = voice->synth = voice->midi = 0;
	voice->capture = voice->spdif = 0;
	voice->sample_ops = NULL;
	voice->substream = NULL;
	voice->extra = NULL;
	FUNC4(&trident->voice_alloc, flags);
	if (private_free)
		private_free(voice);
}