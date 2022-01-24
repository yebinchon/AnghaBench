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
struct TYPE_3__ {int /*<<< orphan*/  tremfrq; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {TYPE_2__ reg; int /*<<< orphan*/  ch; int /*<<< orphan*/  aaux; int /*<<< orphan*/  apan; int /*<<< orphan*/  apitch; int /*<<< orphan*/  avol; struct snd_emu10k1* hw; } ;
struct snd_emu10k1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFATN_ATTENUATION ; 
 int /*<<< orphan*/  IP ; 
 int /*<<< orphan*/  PTRX_FXSENDAMOUNT_A ; 
 int /*<<< orphan*/  PTRX_FXSENDAMOUNT_B ; 
 int SNDRV_EMUX_UPDATE_FM2FRQ2 ; 
 int SNDRV_EMUX_UPDATE_FMMOD ; 
 int SNDRV_EMUX_UPDATE_PAN ; 
 int SNDRV_EMUX_UPDATE_PITCH ; 
 int SNDRV_EMUX_UPDATE_Q ; 
 int SNDRV_EMUX_UPDATE_TREMFREQ ; 
 int SNDRV_EMUX_UPDATE_VOLUME ; 
 int /*<<< orphan*/  TREMFRQ ; 
 int /*<<< orphan*/  FUNC0 (struct snd_emu10k1*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu10k1*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu10k1*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu10k1*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct snd_emux_voice *vp, int update)
{
	struct snd_emu10k1 *hw;
	
	hw = vp->hw;
	if (update & SNDRV_EMUX_UPDATE_VOLUME)
		FUNC3(hw, IFATN_ATTENUATION, vp->ch, vp->avol);
	if (update & SNDRV_EMUX_UPDATE_PITCH)
		FUNC3(hw, IP, vp->ch, vp->apitch);
	if (update & SNDRV_EMUX_UPDATE_PAN) {
		FUNC3(hw, PTRX_FXSENDAMOUNT_A, vp->ch, vp->apan);
		FUNC3(hw, PTRX_FXSENDAMOUNT_B, vp->ch, vp->aaux);
	}
	if (update & SNDRV_EMUX_UPDATE_FMMOD)
		FUNC2(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_TREMFREQ)
		FUNC3(hw, TREMFRQ, vp->ch, vp->reg.parm.tremfrq);
	if (update & SNDRV_EMUX_UPDATE_FM2FRQ2)
		FUNC1(hw, vp);
	if (update & SNDRV_EMUX_UPDATE_Q)
		FUNC0(hw, vp);
}