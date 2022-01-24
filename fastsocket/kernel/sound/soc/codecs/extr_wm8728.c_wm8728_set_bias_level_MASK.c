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
struct snd_soc_codec {int bias_level; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int WM8728_DACCTL ; 
 int FUNC1 (struct snd_soc_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int,int) ; 
 int /*<<< orphan*/  wm8728_reg_defaults ; 

__attribute__((used)) static int FUNC3(struct snd_soc_codec *codec,
				 enum snd_soc_bias_level level)
{
	u16 reg;
	int i;

	switch (level) {
	case SND_SOC_BIAS_ON:
	case SND_SOC_BIAS_PREPARE:
	case SND_SOC_BIAS_STANDBY:
		if (codec->bias_level == SND_SOC_BIAS_OFF) {
			/* Power everything up... */
			reg = FUNC1(codec, WM8728_DACCTL);
			FUNC2(codec, WM8728_DACCTL, reg & ~0x4);

			/* ..then sync in the register cache. */
			for (i = 0; i < FUNC0(wm8728_reg_defaults); i++)
				FUNC2(codec, i,
					     FUNC1(codec, i));
		}
		break;

	case SND_SOC_BIAS_OFF:
		reg = FUNC1(codec, WM8728_DACCTL);
		FUNC2(codec, WM8728_DACCTL, reg | 0x4);
		break;
	}
	codec->bias_level = level;
	return 0;
}