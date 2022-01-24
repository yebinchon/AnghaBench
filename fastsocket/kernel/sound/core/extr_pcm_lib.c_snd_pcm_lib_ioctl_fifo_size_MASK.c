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
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {int fifo_size; } ;
typedef  int /*<<< orphan*/  snd_pcm_format_t ;
struct TYPE_3__ {int fifo_size; int info; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int SNDRV_PCM_INFO_FIFO_IN_FRAMES ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_pcm_hw_params*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
				       void *arg)
{
	struct snd_pcm_hw_params *params = arg;
	snd_pcm_format_t format;
	int channels, width;

	params->fifo_size = substream->runtime->hw.fifo_size;
	if (!(substream->runtime->hw.info & SNDRV_PCM_INFO_FIFO_IN_FRAMES)) {
		format = FUNC1(params);
		channels = FUNC0(params);
		width = FUNC2(format);
		params->fifo_size /= width * channels;
	}
	return 0;
}