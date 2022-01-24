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
struct TYPE_3__ {int filterQ; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {int /*<<< orphan*/  ch; TYPE_2__ reg; } ;
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_emu8000*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct snd_emu8000 *hw, struct snd_emux_voice *vp)
{
	unsigned int addr;
	addr = FUNC0(hw, vp->ch) & 0xffffff;
	addr |= (vp->reg.parm.filterQ << 28);
	FUNC1(hw, vp->ch, addr);
}