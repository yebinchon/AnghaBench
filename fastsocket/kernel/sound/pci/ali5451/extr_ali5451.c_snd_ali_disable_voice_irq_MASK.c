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
struct TYPE_4__ {int /*<<< orphan*/  ainten; } ;
struct TYPE_3__ {unsigned int ainten; } ;
struct snd_ali_channel_control {TYPE_2__ regs; TYPE_1__ data; } ;
struct snd_ali {struct snd_ali_channel_control chregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct snd_ali *codec,
				      unsigned int channel)
{
	unsigned int mask;
	struct snd_ali_channel_control *pchregs = &(codec->chregs);

	FUNC3("disable_voice_irq channel=%d\n",channel);

	mask = 1 << (channel & 0x1f);
	pchregs->data.ainten  = FUNC1(FUNC0(codec, pchregs->regs.ainten));
	pchregs->data.ainten &= ~mask;
	FUNC2(pchregs->data.ainten, FUNC0(codec, pchregs->regs.ainten));
}