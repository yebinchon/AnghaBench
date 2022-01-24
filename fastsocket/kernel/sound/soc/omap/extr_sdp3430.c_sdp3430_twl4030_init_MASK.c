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
 int /*<<< orphan*/  SND_JACK_HEADSET ; 
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  hs_jack ; 
 int /*<<< orphan*/  hs_jack_gpios ; 
 int /*<<< orphan*/  hs_jack_pins ; 
 int /*<<< orphan*/  sdp3430_twl4030_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,char*) ; 
 int FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_codec*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_soc_sdp3430 ; 

__attribute__((used)) static int FUNC10(struct snd_soc_codec *codec)
{
	int ret;

	/* Add SDP3430 specific widgets */
	ret = FUNC5(codec, sdp3430_twl4030_dapm_widgets,
				FUNC0(sdp3430_twl4030_dapm_widgets));
	if (ret)
		return ret;

	/* Set up SDP3430 specific audio path audio_map */
	FUNC1(codec, audio_map, FUNC0(audio_map));

	/* SDP3430 connected pins */
	FUNC3(codec, "Ext Mic");
	FUNC3(codec, "Ext Spk");
	FUNC2(codec, "Headset Mic");
	FUNC2(codec, "Headset Stereophone");

	/* TWL4030 not connected pins */
	FUNC4(codec, "AUXL");
	FUNC4(codec, "AUXR");
	FUNC4(codec, "CARKITMIC");
	FUNC4(codec, "DIGIMIC0");
	FUNC4(codec, "DIGIMIC1");

	FUNC4(codec, "OUTL");
	FUNC4(codec, "OUTR");
	FUNC4(codec, "EARPIECE");
	FUNC4(codec, "PREDRIVEL");
	FUNC4(codec, "PREDRIVER");
	FUNC4(codec, "CARKITL");
	FUNC4(codec, "CARKITR");

	ret = FUNC6(codec);
	if (ret)
		return ret;

	/* Headset jack detection */
	ret = FUNC9(&snd_soc_sdp3430, "Headset Jack",
				SND_JACK_HEADSET, &hs_jack);
	if (ret)
		return ret;

	ret = FUNC8(&hs_jack, FUNC0(hs_jack_pins),
				hs_jack_pins);
	if (ret)
		return ret;

	ret = FUNC7(&hs_jack, FUNC0(hs_jack_gpios),
				hs_jack_gpios);

	return ret;
}