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
struct viadev {int running; } ;
struct via82xx_modem {int dummy; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct viadev* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OFFSET_CONTROL ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 132 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct viadev*,int /*<<< orphan*/ ) ; 
 unsigned char VIA_REG_CTRL_PAUSE ; 
 unsigned char VIA_REG_CTRL_START ; 
 unsigned char VIA_REG_CTRL_TERMINATE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 struct via82xx_modem* FUNC2 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC3 (struct via82xx_modem*,struct viadev*) ; 

__attribute__((used)) static int FUNC4(struct snd_pcm_substream *substream, int cmd)
{
	struct via82xx_modem *chip = FUNC2(substream);
	struct viadev *viadev = substream->runtime->private_data;
	unsigned char val = 0;

	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		val |= VIA_REG_CTRL_START;
		viadev->running = 1;
		break;
	case SNDRV_PCM_TRIGGER_STOP:
		val = VIA_REG_CTRL_TERMINATE;
		viadev->running = 0;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		val |= VIA_REG_CTRL_PAUSE;
		viadev->running = 0;
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		viadev->running = 1;
		break;
	default:
		return -EINVAL;
	}
	FUNC1(val, FUNC0(viadev, OFFSET_CONTROL));
	if (cmd == SNDRV_PCM_TRIGGER_STOP)
		FUNC3(chip, viadev);
	return 0;
}