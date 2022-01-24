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
 int /*<<< orphan*/  aic33_dapm_widgets ; 
 int /*<<< orphan*/  aic33_n810_controls ; 
 int /*<<< orphan*/  audio_map ; 
 int FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	int err;

	/* Not connected */
	FUNC3(codec, "MONO_LOUT");
	FUNC3(codec, "HPLCOM");
	FUNC3(codec, "HPRCOM");
	FUNC3(codec, "MIC3L");
	FUNC3(codec, "MIC3R");
	FUNC3(codec, "LINE1R");
	FUNC3(codec, "LINE2L");
	FUNC3(codec, "LINE2R");

	/* Add N810 specific controls */
	err = FUNC1(codec, aic33_n810_controls,
				FUNC0(aic33_n810_controls));
	if (err < 0)
		return err;

	/* Add N810 specific widgets */
	FUNC4(codec, aic33_dapm_widgets,
				  FUNC0(aic33_dapm_widgets));

	/* Set up N810 specific audio path audio_map */
	FUNC2(codec, audio_map, FUNC0(audio_map));

	FUNC5(codec);

	return 0;
}