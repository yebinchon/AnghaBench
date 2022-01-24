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
struct ua101 {int /*<<< orphan*/  states; } ;
struct snd_pcm_substream {struct ua101* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALSA_PLAYBACK_RUNNING ; 
 int EINVAL ; 
 int EIO ; 
#define  SNDRV_PCM_TRIGGER_START 129 
#define  SNDRV_PCM_TRIGGER_STOP 128 
 int /*<<< orphan*/  USB_PLAYBACK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream, int cmd)
{
	struct ua101 *ua = substream->private_data;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
		if (!FUNC2(USB_PLAYBACK_RUNNING, &ua->states))
			return -EIO;
		FUNC1(ALSA_PLAYBACK_RUNNING, &ua->states);
		return 0;
	case SNDRV_PCM_TRIGGER_STOP:
		FUNC0(ALSA_PLAYBACK_RUNNING, &ua->states);
		return 0;
	default:
		return -EINVAL;
	}
}