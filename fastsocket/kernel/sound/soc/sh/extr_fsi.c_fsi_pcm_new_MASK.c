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
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PREALLOC_BUFFER ; 
 int /*<<< orphan*/  PREALLOC_BUFFER_MAX ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_card *card,
		       struct snd_soc_dai *dai,
		       struct snd_pcm *pcm)
{
	/*
	 * dont use SNDRV_DMA_TYPE_DEV, since it will oops the SH kernel
	 * in MMAP mode (i.e. aplay -M)
	 */
	return FUNC1(
		pcm,
		SNDRV_DMA_TYPE_CONTINUOUS,
		FUNC0(GFP_KERNEL),
		PREALLOC_BUFFER, PREALLOC_BUFFER_MAX);
}