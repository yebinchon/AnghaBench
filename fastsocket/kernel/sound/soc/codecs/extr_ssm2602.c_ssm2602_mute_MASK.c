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
 int APDIGI_ENABLE_DAC_MUTE ; 
 int /*<<< orphan*/  SSM2602_APDIGI ; 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute)
{
	struct snd_soc_codec *codec = dai->codec;
	u16 mute_reg = FUNC0(codec, SSM2602_APDIGI) & ~APDIGI_ENABLE_DAC_MUTE;
	if (mute)
		FUNC1(codec, SSM2602_APDIGI,
				mute_reg | APDIGI_ENABLE_DAC_MUTE);
	else
		FUNC1(codec, SSM2602_APDIGI, mute_reg);
	return 0;
}