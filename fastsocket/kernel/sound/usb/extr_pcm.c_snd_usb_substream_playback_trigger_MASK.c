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
struct snd_usb_substream {int running; TYPE_2__* data_endpoint; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {int /*<<< orphan*/ * retire_data_urb; int /*<<< orphan*/ * prepare_data_urb; } ;
struct TYPE_3__ {struct snd_usb_substream* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 131 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 130 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/ * prepare_playback_urb ; 
 int /*<<< orphan*/ * retire_playback_urb ; 
 int /*<<< orphan*/  FUNC0 (struct snd_usb_substream*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct snd_pcm_substream *substream,
					      int cmd)
{
	struct snd_usb_substream *subs = substream->runtime->private_data;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		subs->data_endpoint->prepare_data_urb = prepare_playback_urb;
		subs->data_endpoint->retire_data_urb = retire_playback_urb;
		subs->running = 1;
		return 0;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC0(subs, 0, 0, 0);
		subs->running = 0;
		return 0;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		subs->data_endpoint->prepare_data_urb = NULL;
		subs->data_endpoint->retire_data_urb = NULL;
		subs->running = 0;
		return 0;
	}

	return -EINVAL;
}