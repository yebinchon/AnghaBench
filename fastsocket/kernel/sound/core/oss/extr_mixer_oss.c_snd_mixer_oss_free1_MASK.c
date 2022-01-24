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
struct snd_mixer_oss_slot {int /*<<< orphan*/  (* private_free ) (struct snd_mixer_oss_slot*) ;} ;
struct snd_mixer_oss {struct snd_mixer_oss_slot* slots; struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct TYPE_2__ {struct snd_mixer_oss* mixer_oss; } ;

/* Variables and functions */
 int ENXIO ; 
 int SNDRV_OSS_MAX_MIXERS ; 
 TYPE_1__* FUNC0 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer_oss*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer_oss_slot*) ; 

__attribute__((used)) static int FUNC4(void *private)
{
	struct snd_mixer_oss *mixer = private;
	struct snd_card *card;
	int idx;
 
	if (!mixer)
		return 0;
	card = mixer->card;
	if (FUNC2(mixer != FUNC0(card)->mixer_oss))
		return -ENXIO;
	FUNC0(card)->mixer_oss = NULL;
	for (idx = 0; idx < SNDRV_OSS_MAX_MIXERS; idx++) {
		struct snd_mixer_oss_slot *chn = &mixer->slots[idx];
		if (chn->private_free)
			chn->private_free(chn);
	}
	FUNC1(mixer);
	return 0;
}