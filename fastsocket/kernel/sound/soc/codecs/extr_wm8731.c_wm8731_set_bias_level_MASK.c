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
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  WM8731_ACTIVE ; 
 int /*<<< orphan*/  WM8731_PWR ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_codec *codec,
				 enum snd_soc_bias_level level)
{
	u16 reg;

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;
	case SND_SOC_BIAS_PREPARE:
		break;
	case SND_SOC_BIAS_STANDBY:
		/* Clear PWROFF, gate CLKOUT, everything else as-is */
		reg = FUNC0(codec, WM8731_PWR) & 0xff7f;
		FUNC1(codec, WM8731_PWR, reg | 0x0040);
		break;
	case SND_SOC_BIAS_OFF:
		FUNC1(codec, WM8731_ACTIVE, 0x0);
		FUNC1(codec, WM8731_PWR, 0xffff);
		break;
	}
	codec->bias_level = level;
	return 0;
}