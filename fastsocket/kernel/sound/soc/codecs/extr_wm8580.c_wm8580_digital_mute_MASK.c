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
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8580_DAC_CONTROL5 ; 
 unsigned int WM8580_DAC_CONTROL5_MUTEALL ; 
 unsigned int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai, int mute)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	unsigned int reg;

	reg = FUNC0(codec, WM8580_DAC_CONTROL5);

	if (mute)
		reg |= WM8580_DAC_CONTROL5_MUTEALL;
	else
		reg &= ~WM8580_DAC_CONTROL5_MUTEALL;

	FUNC1(codec, WM8580_DAC_CONTROL5, reg);

	return 0;
}