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
struct snd_card {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SNDRV_DEVICE_TYPE_CONTROL 134 
#define  SNDRV_DEVICE_TYPE_HWDEP 133 
#define  SNDRV_DEVICE_TYPE_PCM_CAPTURE 132 
#define  SNDRV_DEVICE_TYPE_PCM_PLAYBACK 131 
#define  SNDRV_DEVICE_TYPE_RAWMIDI 130 
#define  SNDRV_DEVICE_TYPE_SEQUENCER 129 
#define  SNDRV_DEVICE_TYPE_TIMER 128 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SNDRV_OS_MINORS ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(int type, struct snd_card *card, int dev)
{
	int minor;

	switch (type) {
	case SNDRV_DEVICE_TYPE_SEQUENCER:
	case SNDRV_DEVICE_TYPE_TIMER:
		minor = type;
		break;
	case SNDRV_DEVICE_TYPE_CONTROL:
		if (FUNC1(!card))
			return -EINVAL;
		minor = FUNC0(card->number, type);
		break;
	case SNDRV_DEVICE_TYPE_HWDEP:
	case SNDRV_DEVICE_TYPE_RAWMIDI:
	case SNDRV_DEVICE_TYPE_PCM_PLAYBACK:
	case SNDRV_DEVICE_TYPE_PCM_CAPTURE:
		if (FUNC1(!card))
			return -EINVAL;
		minor = FUNC0(card->number, type + dev);
		break;
	default:
		return -EINVAL;
	}
	if (FUNC1(minor < 0 || minor >= SNDRV_OS_MINORS))
		return -EINVAL;
	return minor;
}