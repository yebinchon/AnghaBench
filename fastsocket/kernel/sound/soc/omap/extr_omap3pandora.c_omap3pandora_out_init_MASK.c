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
struct snd_soc_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap3pandora_out_dapm_widgets ; 
 int /*<<< orphan*/  omap3pandora_out_map ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec)
{
	int ret;

	/* All TWL4030 output pins are floating */
	FUNC2(codec, "OUTL");
	FUNC2(codec, "OUTR");
	FUNC2(codec, "EARPIECE");
	FUNC2(codec, "PREDRIVEL");
	FUNC2(codec, "PREDRIVER");
	FUNC2(codec, "HSOL");
	FUNC2(codec, "HSOR");
	FUNC2(codec, "CARKITL");
	FUNC2(codec, "CARKITR");
	FUNC2(codec, "HFL");
	FUNC2(codec, "HFR");
	FUNC2(codec, "VIBRA");

	ret = FUNC3(codec, omap3pandora_out_dapm_widgets,
				FUNC0(omap3pandora_out_dapm_widgets));
	if (ret < 0)
		return ret;

	FUNC1(codec, omap3pandora_out_map,
		FUNC0(omap3pandora_out_map));

	return FUNC4(codec);
}