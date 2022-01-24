#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_hw_rule {int /*<<< orphan*/  var; struct aaci* private; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct aaci {TYPE_3__* ac97_bus; } ;
struct TYPE_6__ {TYPE_2__* pcms; } ;
struct TYPE_5__ {TYPE_1__* r; } ;
struct TYPE_4__ {unsigned int slots; } ;

/* Variables and functions */
 int AC97_SLOT_LFE ; 
 int AC97_SLOT_PCM_SLEFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  channel_list ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC3(struct snd_pcm_hw_params *p, struct snd_pcm_hw_rule *rule)
{
	struct aaci *aaci = rule->private;
	unsigned int chan_mask = 1 << 0, slots;

	/*
	 * pcms[0] is the our 5.1 PCM instance.
	 */
	slots = aaci->ac97_bus->pcms[0].r[0].slots;
	if (slots & (1 << AC97_SLOT_PCM_SLEFT)) {
		chan_mask |= 1 << 1;
		if (slots & (1 << AC97_SLOT_LFE))
			chan_mask |= 1 << 2;
	}

	return FUNC2(FUNC1(p, rule->var),
				 FUNC0(channel_list), channel_list,
				 chan_mask);
}