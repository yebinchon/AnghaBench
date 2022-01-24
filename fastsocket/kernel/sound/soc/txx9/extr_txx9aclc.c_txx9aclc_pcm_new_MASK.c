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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_DMA_TYPE_DEV ; 
 int FUNC0 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct snd_card *card, struct snd_soc_dai *dai,
			    struct snd_pcm *pcm)
{
	return FUNC0(pcm, SNDRV_DMA_TYPE_DEV,
		card->dev, 64 * 1024, 4 * 1024 * 1024);
}