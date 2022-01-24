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
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8510_ADC ; 
#define  WM8510_ADCCLK 132 
#define  WM8510_BCLKDIV 131 
 int /*<<< orphan*/  WM8510_CLOCK ; 
 int /*<<< orphan*/  WM8510_DAC ; 
#define  WM8510_DACCLK 130 
 int /*<<< orphan*/  WM8510_GPIO ; 
#define  WM8510_MCLKDIV 129 
#define  WM8510_OPCLKDIV 128 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
		int div_id, int div)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	u16 reg;

	switch (div_id) {
	case WM8510_OPCLKDIV:
		reg = FUNC0(codec, WM8510_GPIO) & 0x1cf;
		FUNC1(codec, WM8510_GPIO, reg | div);
		break;
	case WM8510_MCLKDIV:
		reg = FUNC0(codec, WM8510_CLOCK) & 0x11f;
		FUNC1(codec, WM8510_CLOCK, reg | div);
		break;
	case WM8510_ADCCLK:
		reg = FUNC0(codec, WM8510_ADC) & 0x1f7;
		FUNC1(codec, WM8510_ADC, reg | div);
		break;
	case WM8510_DACCLK:
		reg = FUNC0(codec, WM8510_DAC) & 0x1f7;
		FUNC1(codec, WM8510_DAC, reg | div);
		break;
	case WM8510_BCLKDIV:
		reg = FUNC0(codec, WM8510_CLOCK) & 0x1e3;
		FUNC1(codec, WM8510_CLOCK, reg | div);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}