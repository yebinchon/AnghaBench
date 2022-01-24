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
struct snd_cs46xx {int /*<<< orphan*/  reg_lock; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {scalar_t__ npcm_channels; int /*<<< orphan*/  nsrc_scb; scalar_t__* src_scb_slots; } ;
struct dsp_pcm_channel_descriptor {int unlinked; size_t src_slot; TYPE_1__* src_scb; TYPE_1__* pcm_reader_scb; int /*<<< orphan*/ * private_data; scalar_t__ active; } ;
struct TYPE_2__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 size_t DSP_MAX_SRC_NR ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4 (struct snd_cs46xx * chip,
				     struct dsp_pcm_channel_descriptor * pcm_channel)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;
	unsigned long flags;

	if (FUNC1(!pcm_channel->active ||
		       ins->npcm_channels <= 0 ||
		       pcm_channel->src_scb->ref_count <= 0))
		return;

	FUNC2(&chip->reg_lock, flags);
	pcm_channel->unlinked = 1;
	pcm_channel->active = 0;
	pcm_channel->private_data = NULL;
	pcm_channel->src_scb->ref_count --;
	ins->npcm_channels --;
	FUNC3(&chip->reg_lock, flags);

	FUNC0(chip,pcm_channel->pcm_reader_scb);

	if (!pcm_channel->src_scb->ref_count) {
		FUNC0(chip,pcm_channel->src_scb);

		if (FUNC1(pcm_channel->src_slot < 0 ||
			       pcm_channel->src_slot >= DSP_MAX_SRC_NR))
			return;

		ins->src_scb_slots[pcm_channel->src_slot] = 0;
		ins->nsrc_scb --;
	}
}