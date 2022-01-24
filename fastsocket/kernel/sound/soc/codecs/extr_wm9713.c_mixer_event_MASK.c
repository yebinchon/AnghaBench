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
typedef  int u16 ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  codec; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AUX ; 
 int /*<<< orphan*/  AC97_MASTER_TONE ; 
 int /*<<< orphan*/  AC97_PCM ; 
 int /*<<< orphan*/  AC97_PC_BEEP ; 
 int /*<<< orphan*/  AC97_PHONE ; 
 int /*<<< orphan*/  AC97_REC_SEL ; 
 int /*<<< orphan*/  HPL_MIXER ; 
 int /*<<< orphan*/  HPR_MIXER ; 
 int SND_SOC_DAPM_PRE_REG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	u16 l, r, beep, tone, phone, rec, pcm, aux;

	l = FUNC0(w->codec, HPL_MIXER);
	r = FUNC0(w->codec, HPR_MIXER);
	beep = FUNC0(w->codec, AC97_PC_BEEP);
	tone = FUNC0(w->codec, AC97_MASTER_TONE);
	phone = FUNC0(w->codec, AC97_PHONE);
	rec = FUNC0(w->codec, AC97_REC_SEL);
	pcm = FUNC0(w->codec, AC97_PCM);
	aux = FUNC0(w->codec, AC97_AUX);

	if (event & SND_SOC_DAPM_PRE_REG)
		return 0;
	if ((l & 0x1) || (r & 0x1))
		FUNC1(w->codec, AC97_PC_BEEP, beep & 0x7fff);
	else
		FUNC1(w->codec, AC97_PC_BEEP, beep | 0x8000);

	if ((l & 0x2) || (r & 0x2))
		FUNC1(w->codec, AC97_MASTER_TONE, tone & 0x7fff);
	else
		FUNC1(w->codec, AC97_MASTER_TONE, tone | 0x8000);

	if ((l & 0x4) || (r & 0x4))
		FUNC1(w->codec, AC97_PHONE, phone & 0x7fff);
	else
		FUNC1(w->codec, AC97_PHONE, phone | 0x8000);

	if ((l & 0x8) || (r & 0x8))
		FUNC1(w->codec, AC97_REC_SEL, rec & 0x7fff);
	else
		FUNC1(w->codec, AC97_REC_SEL, rec | 0x8000);

	if ((l & 0x10) || (r & 0x10))
		FUNC1(w->codec, AC97_PCM, pcm & 0x7fff);
	else
		FUNC1(w->codec, AC97_PCM, pcm | 0x8000);

	if ((l & 0x20) || (r & 0x20))
		FUNC1(w->codec, AC97_AUX, aux & 0x7fff);
	else
		FUNC1(w->codec, AC97_AUX, aux | 0x8000);

	return 0;
}