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
typedef  int u32 ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_als300_substream_data {unsigned short control_register; int period_flipflop; } ;
struct snd_als300 {int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  port; } ;
struct TYPE_2__ {struct snd_als300_substream_data* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int FIFO_PAUSE ; 
#define  SNDRV_PCM_TRIGGER_PAUSE_PUSH 133 
#define  SNDRV_PCM_TRIGGER_PAUSE_RELEASE 132 
#define  SNDRV_PCM_TRIGGER_RESUME 131 
#define  SNDRV_PCM_TRIGGER_START 130 
#define  SNDRV_PCM_TRIGGER_STOP 129 
#define  SNDRV_PCM_TRIGGER_SUSPEND 128 
 int TRANSFER_START ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned short,int) ; 
 struct snd_als300* FUNC5 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct snd_pcm_substream *substream, int cmd)
{
	struct snd_als300 *chip = FUNC5(substream);
	u32 tmp;
	struct snd_als300_substream_data *data;
	unsigned short reg;
	int ret = 0;

	data = substream->runtime->private_data;
	reg = data->control_register;

	FUNC0();
	FUNC6(&chip->reg_lock);
	switch (cmd) {
	case SNDRV_PCM_TRIGGER_START:
	case SNDRV_PCM_TRIGGER_RESUME:
		tmp = FUNC3(chip->port, reg);
		data->period_flipflop = 1;
		FUNC4(chip->port, reg, tmp | TRANSFER_START);
		FUNC2("TRIGGER START\n");
		break;
	case SNDRV_PCM_TRIGGER_STOP:
	case SNDRV_PCM_TRIGGER_SUSPEND:
		tmp = FUNC3(chip->port, reg);
		FUNC4(chip->port, reg, tmp & ~TRANSFER_START);
		FUNC2("TRIGGER STOP\n");
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
		tmp = FUNC3(chip->port, reg);
		FUNC4(chip->port, reg, tmp | FIFO_PAUSE);
		FUNC2("TRIGGER PAUSE\n");
		break;
	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
		tmp = FUNC3(chip->port, reg);
		FUNC4(chip->port, reg, tmp & ~FIFO_PAUSE);
		FUNC2("TRIGGER RELEASE\n");
		break;
	default:
		FUNC2("TRIGGER INVALID\n");
		ret = -EINVAL;
	}
	FUNC7(&chip->reg_lock);
	FUNC1();
	return ret;
}