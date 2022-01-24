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
 int /*<<< orphan*/  tosa_controls ; 
 int /*<<< orphan*/  tosa_dapm_widgets ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	int err;

	FUNC3(codec, "OUT3");
	FUNC3(codec, "MONOOUT");

	/* add tosa specific controls */
	err = FUNC1(codec, tosa_controls,
				FUNC0(tosa_controls));
	if (err < 0)
		return err;

	/* add tosa specific widgets */
	FUNC4(codec, tosa_dapm_widgets,
				  FUNC0(tosa_dapm_widgets));

	/* set up tosa specific audio path audio_map */
	FUNC2(codec, audio_map, FUNC0(audio_map));

	FUNC5(codec);
	return 0;
}