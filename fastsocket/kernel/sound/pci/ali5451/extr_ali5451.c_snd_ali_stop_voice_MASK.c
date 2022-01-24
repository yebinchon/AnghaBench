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
struct TYPE_3__ {int /*<<< orphan*/  stop; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;
struct snd_ali {TYPE_2__ chregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ali*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct snd_ali *codec, unsigned int channel)
{
	unsigned int mask = 1 << (channel & 0x1f);

	FUNC2("stop_voice: channel=%d\n",channel);
	FUNC1(mask, FUNC0(codec, codec->chregs.regs.stop));
}