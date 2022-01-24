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
struct snd_pcm_substream {struct audio_stream* private_data; } ;
struct audio_stream {int /*<<< orphan*/  dma_lock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct audio_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct audio_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct snd_pcm_substream *substream, int cmd)
{
	struct audio_stream *stream = substream->private_data;
	int err = 0;

	FUNC2(&stream->dma_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		FUNC0(stream);
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC1(stream);
		break;
	default:
		err = -EINVAL;
		break;
	}
	FUNC3(&stream->dma_lock);
	return err;
}