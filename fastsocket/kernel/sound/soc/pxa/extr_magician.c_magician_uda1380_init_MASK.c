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
 int /*<<< orphan*/  uda1380_dapm_widgets ; 
 int /*<<< orphan*/  uda1380_magician_controls ; 

__attribute__((used)) static int FUNC6(struct snd_soc_codec *codec)
{
	int err;

	/* NC codec pins */
	FUNC3(codec, "VOUTLHP");
	FUNC3(codec, "VOUTRHP");

	/* FIXME: is anything connected here? */
	FUNC3(codec, "VINL");
	FUNC3(codec, "VINR");

	/* Add magician specific controls */
	err = FUNC1(codec, uda1380_magician_controls,
				FUNC0(uda1380_magician_controls));
	if (err < 0)
		return err;

	/* Add magician specific widgets */
	FUNC4(codec, uda1380_dapm_widgets,
				  FUNC0(uda1380_dapm_widgets));

	/* Set up magician specific audio path interconnects */
	FUNC2(codec, audio_map, FUNC0(audio_map));

	FUNC5(codec);
	return 0;
}