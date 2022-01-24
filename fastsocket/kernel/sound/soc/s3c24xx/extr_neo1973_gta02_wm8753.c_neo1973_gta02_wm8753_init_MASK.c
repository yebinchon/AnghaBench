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
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  wm8753_dapm_widgets ; 
 int /*<<< orphan*/  wm8753_neo1973_gta02_controls ; 

__attribute__((used)) static int FUNC7(struct snd_soc_codec *codec)
{
	int err;

	/* set up NC codec pins */
	FUNC4(codec, "OUT3");
	FUNC4(codec, "OUT4");
	FUNC4(codec, "LINE1");
	FUNC4(codec, "LINE2");

	/* Add neo1973 gta02 specific widgets */
	FUNC5(codec, wm8753_dapm_widgets,
				  FUNC0(wm8753_dapm_widgets));

	/* add neo1973 gta02 specific controls */
	err = FUNC1(codec, wm8753_neo1973_gta02_controls,
		FUNC0(wm8753_neo1973_gta02_controls));

	if (err < 0)
		return err;

	/* set up neo1973 gta02 specific audio path audio_map */
	FUNC2(codec, audio_map, FUNC0(audio_map));

	/* set endpoints to default off mode */
	FUNC3(codec, "Stereo Out");
	FUNC3(codec, "GSM Line Out");
	FUNC3(codec, "GSM Line In");
	FUNC3(codec, "Headset Mic");
	FUNC3(codec, "Handset Mic");
	FUNC3(codec, "Handset Spk");

	FUNC6(codec);

	return 0;
}