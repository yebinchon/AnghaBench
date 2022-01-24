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
struct snd_msnd {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDEXAR_AUX_SET_POTS ; 
 int /*<<< orphan*/  HDEXAR_IN_SET_POTS ; 
 int /*<<< orphan*/  HDEXAR_MIC_SET_POTS ; 
 int /*<<< orphan*/  MSND_MIXER_AUX ; 
 int /*<<< orphan*/  MSND_MIXER_IMIX ; 
 int /*<<< orphan*/  MSND_MIXER_LINE ; 
 int /*<<< orphan*/  MSND_MIXER_MIC ; 
 int /*<<< orphan*/  MSND_MIXER_PCM ; 
 int /*<<< orphan*/  MSND_MIXER_SYNTH ; 
 int /*<<< orphan*/  bAuxPotPos ; 
 int /*<<< orphan*/  bInPotPos ; 
 int /*<<< orphan*/  bMicPotPos ; 
 scalar_t__ msndPinnacle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wCurrInVol ; 
 int /*<<< orphan*/  wCurrMHdrVol ; 
 int /*<<< orphan*/  wCurrPlayVol ; 

void FUNC3(struct snd_msnd *dev)
{
	FUNC0(MSND_MIXER_LINE, bInPotPos, HDEXAR_IN_SET_POTS);
	FUNC1(MSND_MIXER_AUX, bAuxPotPos, HDEXAR_AUX_SET_POTS);
	FUNC2(MSND_MIXER_PCM, wCurrPlayVol);
	FUNC2(MSND_MIXER_IMIX, wCurrInVol);
	if (dev->type == msndPinnacle) {
		FUNC0(MSND_MIXER_MIC, bMicPotPos, HDEXAR_MIC_SET_POTS);
		FUNC2(MSND_MIXER_SYNTH, wCurrMHdrVol);
	}
}