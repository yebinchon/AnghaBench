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
struct snd_soc_codec {int dummy; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8940_OUTPUTCTL ; 
 int /*<<< orphan*/  WM8940_POWER1 ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec,
				 enum snd_soc_bias_level level)
{
	u16 val;
	u16 pwr_reg = FUNC0(codec, WM8940_POWER1) & 0x1F0;
	int ret = 0;

	switch (level) {
	case SND_SOC_BIAS_ON:
		/* ensure bufioen and biasen */
		pwr_reg |= (1 << 2) | (1 << 3);
		/* Enable thermal shutdown */
		val = FUNC0(codec, WM8940_OUTPUTCTL);
		ret = FUNC1(codec, WM8940_OUTPUTCTL, val | 0x2);
		if (ret)
			break;
		/* set vmid to 75k */
		ret = FUNC1(codec, WM8940_POWER1, pwr_reg | 0x1);
		break;
	case SND_SOC_BIAS_PREPARE:
		/* ensure bufioen and biasen */
		pwr_reg |= (1 << 2) | (1 << 3);
		ret = FUNC1(codec, WM8940_POWER1, pwr_reg | 0x1);
		break;
	case SND_SOC_BIAS_STANDBY:
		/* ensure bufioen and biasen */
		pwr_reg |= (1 << 2) | (1 << 3);
		/* set vmid to 300k for standby */
		ret = FUNC1(codec, WM8940_POWER1, pwr_reg | 0x2);
		break;
	case SND_SOC_BIAS_OFF:
		ret = FUNC1(codec, WM8940_POWER1, pwr_reg);
		break;
	}

	return ret;
}