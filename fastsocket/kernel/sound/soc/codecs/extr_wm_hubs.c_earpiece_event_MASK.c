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
 int /*<<< orphan*/  FUNC0 () ; 
#define  SND_SOC_DAPM_POST_PMD 129 
#define  SND_SOC_DAPM_PRE_PMU 128 
 int /*<<< orphan*/  WM8993_ANTIPOP1 ; 
 int WM8993_HPOUT2_IN_ENA ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dapm_widget *w,
			  struct snd_kcontrol *control, int event)
{
	struct snd_soc_codec *codec = w->codec;
	u16 reg = FUNC1(codec, WM8993_ANTIPOP1) & ~WM8993_HPOUT2_IN_ENA;

	switch (event) {
	case SND_SOC_DAPM_PRE_PMU:
		reg |= WM8993_HPOUT2_IN_ENA;
		FUNC2(codec, WM8993_ANTIPOP1, reg);
		FUNC3(50);
		break;

	case SND_SOC_DAPM_POST_PMD:
		FUNC2(codec, WM8993_ANTIPOP1, reg);
		break;

	default:
		FUNC0();
		break;
	}

	return 0;
}