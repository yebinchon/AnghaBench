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
 int /*<<< orphan*/  SND_JACK_HEADPHONE ; 
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  hs_jack ; 
 int /*<<< orphan*/  hs_jack_gpios ; 
 int /*<<< orphan*/  hs_jack_pins ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  palm27x_asoc ; 
 int /*<<< orphan*/  palm27x_dapm_widgets ; 
 int FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,char*) ; 
 int FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_soc_codec*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_codec *codec)
{
	int err;

	/* add palm27x specific widgets */
	err = FUNC5(codec, palm27x_dapm_widgets,
				FUNC0(palm27x_dapm_widgets));
	if (err)
		return err;

	/* set up palm27x specific audio path audio_map */
	err = FUNC2(codec, audio_map, FUNC0(audio_map));
	if (err)
		return err;

	/* connected pins */
	if (FUNC1())
		FUNC3(codec, "MIC1");
	FUNC3(codec, "HPOUTL");
	FUNC3(codec, "HPOUTR");
	FUNC3(codec, "LOUT2");
	FUNC3(codec, "ROUT2");

	/* not connected pins */
	FUNC4(codec, "OUT3");
	FUNC4(codec, "MONOOUT");
	FUNC4(codec, "LINEINL");
	FUNC4(codec, "LINEINR");
	FUNC4(codec, "PCBEEP");
	FUNC4(codec, "PHONE");
	FUNC4(codec, "MIC2");

	err = FUNC6(codec);
	if (err)
		return err;

	/* Jack detection API stuff */
	err = FUNC9(&palm27x_asoc, "Headphone Jack",
				SND_JACK_HEADPHONE, &hs_jack);
	if (err)
		return err;

	err = FUNC8(&hs_jack, FUNC0(hs_jack_pins),
				hs_jack_pins);
	if (err)
		return err;

	err = FUNC7(&hs_jack, FUNC0(hs_jack_gpios),
				hs_jack_gpios);

	return err;
}