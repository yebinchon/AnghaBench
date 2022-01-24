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
 int /*<<< orphan*/  WM8940_ADDCNTRL ; 
#define  WM8940_BCLKDIV 130 
 int /*<<< orphan*/  WM8940_CLOCK ; 
#define  WM8940_MCLKDIV 129 
#define  WM8940_OPCLKDIV 128 
 int FUNC0 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *codec_dai,
				 int div_id, int div)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	u16 reg;
	int ret = 0;

	switch (div_id) {
	case WM8940_BCLKDIV:
		reg = FUNC0(codec, WM8940_CLOCK) & 0xFFEF3;
		ret = FUNC1(codec, WM8940_CLOCK, reg | (div << 2));
		break;
	case WM8940_MCLKDIV:
		reg = FUNC0(codec, WM8940_CLOCK) & 0xFF1F;
		ret = FUNC1(codec, WM8940_CLOCK, reg | (div << 5));
		break;
	case WM8940_OPCLKDIV:
		reg = FUNC0(codec, WM8940_ADDCNTRL) & 0xFFCF;
		ret = FUNC1(codec, WM8940_ADDCNTRL, reg | (div << 4));
		break;
	}
	return ret;
}