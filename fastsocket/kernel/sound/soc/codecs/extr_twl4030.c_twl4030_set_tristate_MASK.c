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
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWL4030_AIF_TRI_EN ; 
 int /*<<< orphan*/  TWL4030_REG_AUDIO_IF ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int tristate)
{
	struct snd_soc_codec *codec = dai->codec;
	u8 reg = FUNC0(codec, TWL4030_REG_AUDIO_IF);

	if (tristate)
		reg |= TWL4030_AIF_TRI_EN;
	else
		reg &= ~TWL4030_AIF_TRI_EN;

	return FUNC1(codec, TWL4030_REG_AUDIO_IF, reg);
}