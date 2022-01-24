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
 int /*<<< orphan*/  e750_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec)
{
	FUNC2(codec, "LOUT");
	FUNC2(codec, "ROUT");
	FUNC2(codec, "PHONE");
	FUNC2(codec, "LINEINL");
	FUNC2(codec, "LINEINR");
	FUNC2(codec, "CDINL");
	FUNC2(codec, "CDINR");
	FUNC2(codec, "PCBEEP");
	FUNC2(codec, "MIC2");

	FUNC3(codec, e750_dapm_widgets,
					FUNC0(e750_dapm_widgets));

	FUNC1(codec, audio_map, FUNC0(audio_map));

	FUNC4(codec);

	return 0;
}