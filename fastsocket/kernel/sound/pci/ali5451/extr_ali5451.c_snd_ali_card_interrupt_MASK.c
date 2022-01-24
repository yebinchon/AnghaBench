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
struct TYPE_4__ {int /*<<< orphan*/  aint; } ;
struct TYPE_3__ {void* aint; } ;
struct snd_ali_channel_control {TYPE_2__ regs; TYPE_1__ data; } ;
struct snd_ali {struct snd_ali_channel_control chregs; int /*<<< orphan*/  hw_initialized; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int ADDRESS_IRQ ; 
 int ALI_CHANNELS ; 
 int /*<<< orphan*/  ALI_MISCINT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int MIXER_OVERFLOW ; 
 int MIXER_UNDERFLOW ; 
 int TARGET_REACHED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ali*,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct snd_ali 	*codec = dev_id;
	int channel;
	unsigned int audio_int;
	struct snd_ali_channel_control *pchregs;

	if (codec == NULL || !codec->hw_initialized)
		return IRQ_NONE;

	audio_int = FUNC1(FUNC0(codec, ALI_MISCINT));
	if (!audio_int)
		return IRQ_NONE;

	pchregs = &(codec->chregs);
	if (audio_int & ADDRESS_IRQ) {
		/* get interrupt status for all channels */
		pchregs->data.aint = FUNC1(FUNC0(codec, pchregs->regs.aint));
		for (channel = 0; channel < ALI_CHANNELS; channel++)
			FUNC3(codec, channel);
	}
	FUNC2((TARGET_REACHED | MIXER_OVERFLOW | MIXER_UNDERFLOW),
		FUNC0(codec, ALI_MISCINT));

	return IRQ_HANDLED;
}