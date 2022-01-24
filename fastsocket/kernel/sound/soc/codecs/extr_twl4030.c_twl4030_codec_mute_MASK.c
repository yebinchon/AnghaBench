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
typedef  int /*<<< orphan*/  u8 ;
struct twl4030_priv {int codec_muted; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_APLL_EN ; 
 int /*<<< orphan*/  TWL4030_REG_APLL_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_codec *codec, int mute)
{
	struct twl4030_priv *twl4030 = codec->private_data;
	u8 reg_val;

	if (mute == twl4030->codec_muted)
		return;

	if (mute) {
		/* Disable PLL */
		reg_val = FUNC0(codec, TWL4030_REG_APLL_CTL);
		reg_val &= ~TWL4030_APLL_EN;
		FUNC1(codec, TWL4030_REG_APLL_CTL, reg_val);
	} else {
		/* Enable PLL */
		reg_val = FUNC0(codec, TWL4030_REG_APLL_CTL);
		reg_val |= TWL4030_APLL_EN;
		FUNC1(codec, TWL4030_REG_APLL_CTL, reg_val);
	}

	twl4030->codec_muted = mute;
}