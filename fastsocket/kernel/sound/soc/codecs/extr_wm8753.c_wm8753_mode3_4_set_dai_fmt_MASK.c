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
 int /*<<< orphan*/  WM8753_CLOCK ; 
 scalar_t__ FUNC0 (struct snd_soc_dai*,unsigned int) ; 
 int FUNC1 (struct snd_soc_dai*,unsigned int) ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct snd_soc_dai*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dai *codec_dai,
		unsigned int fmt)
{
	struct snd_soc_codec *codec = codec_dai->codec;
	u16 clock;

	/* set clk source as mclk */
	clock = FUNC2(codec, WM8753_CLOCK) & 0xfffb;
	FUNC4(codec, WM8753_CLOCK, clock | 0x4);

	if (FUNC0(codec_dai, fmt) < 0)
		return -EINVAL;
	if (FUNC3(codec_dai, fmt) < 0)
		return -EINVAL;
	return FUNC1(codec_dai, fmt);
}