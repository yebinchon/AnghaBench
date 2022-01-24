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
typedef  int /*<<< orphan*/  u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLV320AIC23_DACM_MUTE ; 
 int /*<<< orphan*/  TLV320AIC23_DIGT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_codec *codec = dai->codec;
	u16 reg;

	reg = FUNC0(codec, TLV320AIC23_DIGT);
	if (mute)
		reg |= TLV320AIC23_DACM_MUTE;

	else
		reg &= ~TLV320AIC23_DACM_MUTE;

	FUNC1(codec, TLV320AIC23_DIGT, reg);

	return 0;
}