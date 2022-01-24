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
struct snd_soc_dapm_widget {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_EXTENDED_MID ; 
 int /*<<< orphan*/  AC97_HANDSET_RATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SND_SOC_DAPM_PRE_PMD ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
				 struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_codec *codec = w->codec;
	u16 status, rate;

	FUNC0(event != SND_SOC_DAPM_PRE_PMD);

	/* Gracefully shut down the voice interface. */
	status = FUNC1(codec, AC97_EXTENDED_MID) | 0x1000;
	rate = FUNC1(codec, AC97_HANDSET_RATE) & 0xF0FF;
	FUNC2(codec, AC97_HANDSET_RATE, rate | 0x0200);
	FUNC4(FUNC3(1));
	FUNC2(codec, AC97_HANDSET_RATE, rate | 0x0F00);
	FUNC2(codec, AC97_EXTENDED_MID, status);

	return 0;
}