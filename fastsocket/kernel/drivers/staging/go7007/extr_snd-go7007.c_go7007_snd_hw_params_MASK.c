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
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct go7007 {int /*<<< orphan*/  audio_deliver; } ;
struct TYPE_2__ {unsigned int dma_bytes; int /*<<< orphan*/ * dma_area; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  parse_audio_stream_data ; 
 struct go7007* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream,
				struct snd_pcm_hw_params *hw_params)
{
	struct go7007 *go = FUNC1(substream);
	unsigned int bytes;

	bytes = FUNC0(hw_params);
	if (substream->runtime->dma_bytes > 0)
		FUNC2(substream->runtime->dma_area);
	substream->runtime->dma_bytes = 0;
	substream->runtime->dma_area = FUNC3(bytes);
	if (substream->runtime->dma_area == NULL)
		return -ENOMEM;
	substream->runtime->dma_bytes = bytes;
	go->audio_deliver = parse_audio_stream_data;
	return 0;
}