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
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_area; int /*<<< orphan*/  format; struct gus_pcm_private* private_data; } ;
struct snd_gus_card {int dummy; } ;
struct gus_pcm_private {int dma_size; scalar_t__ memory; struct snd_gus_card* gus; } ;
typedef  int /*<<< orphan*/  snd_pcm_uframes_t ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct snd_pcm_runtime*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct snd_pcm_substream*,unsigned int,scalar_t__,unsigned int) ; 
 int FUNC3 (struct snd_gus_card*,scalar_t__,scalar_t__,unsigned int,int,int) ; 
 scalar_t__ snd_gf1_pcm_use_dma ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_pcm_substream *substream,
					int voice,
					snd_pcm_uframes_t pos,
					snd_pcm_uframes_t count)
{
	struct snd_pcm_runtime *runtime = substream->runtime;
	struct gus_pcm_private *pcmp = runtime->private_data;
	unsigned int bpos, len;
	
	bpos = FUNC0(runtime, pos) + (voice * (pcmp->dma_size / 2));
	len = FUNC0(runtime, count);
	if (FUNC1(bpos > pcmp->dma_size))
		return -EIO;
	if (FUNC1(bpos + len > pcmp->dma_size))
		return -EIO;
	FUNC4(runtime->format, runtime->dma_area + bpos, count);
	if (snd_gf1_pcm_use_dma && len > 32) {
		return FUNC2(substream, bpos, pcmp->memory + bpos, len);
	} else {
		struct snd_gus_card *gus = pcmp->gus;
		int err, w16, invert;

		w16 = (FUNC6(runtime->format) == 16);
		invert = FUNC5(runtime->format);
		if ((err = FUNC3(gus, runtime->dma_area + bpos, pcmp->memory + bpos, len, w16, invert)) < 0)
			return err;
	}
	return 0;
}