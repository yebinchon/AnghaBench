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
struct mixart_stream {void* status; } ;
struct TYPE_2__ {struct mixart_stream* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 void* MIXART_STREAM_STATUS_OPEN ; 
 void* MIXART_STREAM_STATUS_PAUSE ; 
 void* MIXART_STREAM_STATUS_RUNNING ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct mixart_stream*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *subs, int cmd)
{
	struct mixart_stream *stream = subs->runtime->private_data;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:

		FUNC1("SNDRV_PCM_TRIGGER_START\n");

		/* START_STREAM */
		if( FUNC0(stream, 1) )
			return -EINVAL;

		stream->status = MIXART_STREAM_STATUS_RUNNING;

		break;
	case SNDRV_PCM_TRIGGER_STOP:

		/* STOP_STREAM */
		if( FUNC0(stream, 0) )
			return -EINVAL;

		stream->status = MIXART_STREAM_STATUS_OPEN;

		FUNC1("SNDRV_PCM_TRIGGER_STOP\n");

		break;

	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		/* TODO */
		stream->status = MIXART_STREAM_STATUS_PAUSE;
		FUNC1("SNDRV_PCM_PAUSE_PUSH\n");
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		/* TODO */
		stream->status = MIXART_STREAM_STATUS_RUNNING;
		FUNC1("SNDRV_PCM_PAUSE_RELEASE\n");
		break;
	default:
		return -EINVAL;
	}
	return 0;
}