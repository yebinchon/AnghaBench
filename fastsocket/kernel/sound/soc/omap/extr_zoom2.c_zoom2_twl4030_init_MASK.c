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
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  zoom2_twl4030_dapm_widgets ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	int ret;

	/* Add Zoom2 specific widgets */
	ret = FUNC4(codec, zoom2_twl4030_dapm_widgets,
				FUNC0(zoom2_twl4030_dapm_widgets));
	if (ret)
		return ret;

	/* Set up Zoom2 specific audio path audio_map */
	FUNC1(codec, audio_map, FUNC0(audio_map));

	/* Zoom2 connected pins */
	FUNC2(codec, "Ext Mic");
	FUNC2(codec, "Ext Spk");
	FUNC2(codec, "Headset Mic");
	FUNC2(codec, "Headset Stereophone");
	FUNC2(codec, "Aux In");

	/* TWL4030 not connected pins */
	FUNC3(codec, "CARKITMIC");
	FUNC3(codec, "DIGIMIC0");
	FUNC3(codec, "DIGIMIC1");

	FUNC3(codec, "OUTL");
	FUNC3(codec, "OUTR");
	FUNC3(codec, "EARPIECE");
	FUNC3(codec, "PREDRIVEL");
	FUNC3(codec, "PREDRIVER");
	FUNC3(codec, "CARKITL");
	FUNC3(codec, "CARKITR");

	ret = FUNC5(codec);

	return ret;
}