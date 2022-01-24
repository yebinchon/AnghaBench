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
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  wm8750_dapm_widgets ; 
 int /*<<< orphan*/  wm8750_spitz_controls ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	int err;

	/* NC codec pins */
	FUNC3(codec, "RINPUT1");
	FUNC3(codec, "LINPUT2");
	FUNC3(codec, "RINPUT2");
	FUNC3(codec, "LINPUT3");
	FUNC3(codec, "RINPUT3");
	FUNC3(codec, "OUT3");
	FUNC3(codec, "MONO1");

	/* Add spitz specific controls */
	err = FUNC1(codec, wm8750_spitz_controls,
				FUNC0(wm8750_spitz_controls));
	if (err < 0)
		return err;

	/* Add spitz specific widgets */
	FUNC4(codec, wm8750_dapm_widgets,
				  FUNC0(wm8750_dapm_widgets));

	/* Set up spitz specific audio paths */
	FUNC2(codec, audio_map, FUNC0(audio_map));

	FUNC5(codec);
	return 0;
}