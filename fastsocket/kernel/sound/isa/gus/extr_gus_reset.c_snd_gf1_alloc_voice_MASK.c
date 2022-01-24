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
struct snd_gus_voice {int /*<<< orphan*/  number; int /*<<< orphan*/  client; scalar_t__ midi; int /*<<< orphan*/  use; } ;
struct TYPE_2__ {scalar_t__ pcm_alloc_voices; scalar_t__ pcm_channels; struct snd_gus_voice* voices; } ;
struct snd_gus_card {int /*<<< orphan*/  voice_alloc; TYPE_1__ gf1; } ;

/* Variables and functions */
 int SNDRV_GF1_VOICE_TYPE_PCM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_gus_card*,struct snd_gus_voice*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_gus_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct snd_gus_voice *FUNC4(struct snd_gus_card * gus, int type, int client, int port)
{
	struct snd_gus_voice *pvoice;
	unsigned long flags;
	int idx;

	FUNC2(&gus->voice_alloc, flags);
	if (type == SNDRV_GF1_VOICE_TYPE_PCM) {
		if (gus->gf1.pcm_alloc_voices >= gus->gf1.pcm_channels) {
			FUNC3(&gus->voice_alloc, flags);
			return NULL;
		}
	}
	for (idx = 0; idx < 32; idx++) {
		pvoice = &gus->gf1.voices[idx];
		if (!pvoice->use) {
			FUNC0(gus, pvoice, type, client, port);
			FUNC3(&gus->voice_alloc, flags);
			return pvoice;
		}
	} 
	for (idx = 0; idx < 32; idx++) {
		pvoice = &gus->gf1.voices[idx];
		if (pvoice->midi && !pvoice->client) {
			FUNC1(gus, pvoice->number, pvoice->number);
			FUNC0(gus, pvoice, type, client, port);
			FUNC3(&gus->voice_alloc, flags);
			return pvoice;
		}
	} 
	FUNC3(&gus->voice_alloc, flags);
	return NULL;
}