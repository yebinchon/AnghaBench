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
struct snd_ps3_card_info {int /*<<< orphan*/  dma_lock; scalar_t__* dma_start_vaddr; scalar_t__* dma_last_transfer_vaddr; } ;
struct snd_pcm_substream {int /*<<< orphan*/  runtime; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 size_t SND_PS3_CH_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct snd_ps3_card_info* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static snd_pcm_uframes_t FUNC4(
	struct snd_pcm_substream *substream)
{
	struct snd_ps3_card_info *card = FUNC1(substream);
	size_t bytes;
	snd_pcm_uframes_t ret;

	FUNC2(&card->dma_lock);
	{
		bytes = (size_t)(card->dma_last_transfer_vaddr[SND_PS3_CH_L] -
				 card->dma_start_vaddr[SND_PS3_CH_L]);
	}
	FUNC3(&card->dma_lock);

	ret = FUNC0(substream->runtime, bytes * 2);

	return ret;
}