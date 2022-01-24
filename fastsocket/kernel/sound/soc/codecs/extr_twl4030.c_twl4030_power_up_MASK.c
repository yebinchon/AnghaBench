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
typedef  int u8 ;
struct twl4030_priv {scalar_t__ codec_powered; } ;
struct snd_soc_codec {struct twl4030_priv* private_data; } ;

/* Variables and functions */
 int TWL4030_CNCL_OFFSET_START ; 
 int /*<<< orphan*/  TWL4030_MODULE_AUDIO_VOICE ; 
 int /*<<< orphan*/  TWL4030_REG_ANAMICL ; 
 int /*<<< orphan*/  TWL4030_REG_MISC_SET_1 ; 
 int TWL4030_SMOOTH_ANAVOL_EN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct snd_soc_codec *codec)
{
	struct twl4030_priv *twl4030 = codec->private_data;
	u8 anamicl, regmisc1, byte;
	int i = 0;

	if (twl4030->codec_powered)
		return;

	/* set CODECPDZ to turn on codec */
	FUNC0(codec, 1);

	/* initiate offset cancellation */
	anamicl = FUNC2(codec, TWL4030_REG_ANAMICL);
	FUNC3(codec, TWL4030_REG_ANAMICL,
		anamicl | TWL4030_CNCL_OFFSET_START);

	/* wait for offset cancellation to complete */
	do {
		/* this takes a little while, so don't slam i2c */
		FUNC5(2000);
		FUNC1(TWL4030_MODULE_AUDIO_VOICE, &byte,
				    TWL4030_REG_ANAMICL);
	} while ((i++ < 100) &&
		 ((byte & TWL4030_CNCL_OFFSET_START) ==
		  TWL4030_CNCL_OFFSET_START));

	/* Make sure that the reg_cache has the same value as the HW */
	FUNC4(codec, TWL4030_REG_ANAMICL, byte);

	/* anti-pop when changing analog gain */
	regmisc1 = FUNC2(codec, TWL4030_REG_MISC_SET_1);
	FUNC3(codec, TWL4030_REG_MISC_SET_1,
		regmisc1 | TWL4030_SMOOTH_ANAVOL_EN);

	/* toggle CODECPDZ as per TRM */
	FUNC0(codec, 0);
	FUNC0(codec, 1);
}