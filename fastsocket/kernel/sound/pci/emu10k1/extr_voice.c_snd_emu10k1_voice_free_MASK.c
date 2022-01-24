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
struct snd_emu10k1_voice {int /*<<< orphan*/  number; int /*<<< orphan*/ * epcm; scalar_t__ efx; scalar_t__ midi; scalar_t__ synth; scalar_t__ pcm; scalar_t__ use; int /*<<< orphan*/ * interrupt; } ;
struct snd_emu10k1 {int /*<<< orphan*/  voice_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_emu10k1 *emu,
			   struct snd_emu10k1_voice *pvoice)
{
	unsigned long flags;

	if (FUNC0(!pvoice))
		return -EINVAL;
	FUNC2(&emu->voice_lock, flags);
	pvoice->interrupt = NULL;
	pvoice->use = pvoice->pcm = pvoice->synth = pvoice->midi = pvoice->efx = 0;
	pvoice->epcm = NULL;
	FUNC1(emu, pvoice->number);
	FUNC3(&emu->voice_lock, flags);
	return 0;
}