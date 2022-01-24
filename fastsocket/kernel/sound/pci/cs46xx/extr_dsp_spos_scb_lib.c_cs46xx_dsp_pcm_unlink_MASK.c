#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_cs46xx {int /*<<< orphan*/  reg_lock; TYPE_1__* dsp_spos_instance; } ;
struct dsp_pcm_channel_descriptor {int unlinked; TYPE_2__* src_scb; int /*<<< orphan*/  pcm_reader_scb; int /*<<< orphan*/  active; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {scalar_t__ npcm_channels; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6 (struct snd_cs46xx * chip,
			   struct dsp_pcm_channel_descriptor * pcm_channel)
{
	unsigned long flags;

	if (FUNC1(!pcm_channel->active ||
		       chip->dsp_spos_instance->npcm_channels <= 0))
		return -EIO;

	FUNC2(&pcm_channel->src_scb->lock);

	if (pcm_channel->unlinked) {
		FUNC4(&pcm_channel->src_scb->lock);
		return -EIO;
	}

	FUNC3(&chip->reg_lock, flags);
	pcm_channel->unlinked = 1;
	FUNC5(&chip->reg_lock, flags);

	FUNC0 (chip,pcm_channel->pcm_reader_scb);

	FUNC4(&pcm_channel->src_scb->lock);
	return 0;
}