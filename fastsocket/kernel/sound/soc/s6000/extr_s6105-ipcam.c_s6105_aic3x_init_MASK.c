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
struct snd_soc_codec {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aic3x_dapm_widgets ; 
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  audio_out_mux ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct snd_soc_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_codec *codec)
{
	/* Add s6105 specific widgets */
	FUNC7(codec, aic3x_dapm_widgets,
				  FUNC0(aic3x_dapm_widgets));

	/* Set up s6105 specific audio path audio_map */
	FUNC3(codec, audio_map, FUNC0(audio_map));

	/* not present */
	FUNC6(codec, "MONO_LOUT");
	FUNC6(codec, "LINE2L");
	FUNC6(codec, "LINE2R");

	/* not connected */
	FUNC6(codec, "MIC3L"); /* LINE2L on this chip */
	FUNC6(codec, "MIC3R"); /* LINE2R on this chip */
	FUNC6(codec, "LLOUT");
	FUNC6(codec, "RLOUT");
	FUNC6(codec, "HPRCOM");

	/* always connected */
	FUNC5(codec, "Audio In");

	/* must correspond to audio_out_mux.private_value initializer */
	FUNC4(codec, "Audio Out Differential");
	FUNC8(codec);
	FUNC5(codec, "Audio Out Stereo");

	FUNC8(codec);

	FUNC1(codec->card, FUNC2(&audio_out_mux, codec));

	return 0;
}