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
struct snd_soc_codec {int /*<<< orphan*/ * dai; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  audio_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ clk_pout ; 
 int /*<<< orphan*/  pout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  zylonite_dapm_widgets ; 

__attribute__((used)) static int FUNC7(struct snd_soc_codec *codec)
{
	if (clk_pout)
		FUNC2(&codec->dai[0], 0, FUNC1(pout), 0);

	FUNC5(codec, zylonite_dapm_widgets,
				  FUNC0(zylonite_dapm_widgets));

	FUNC3(codec, audio_map, FUNC0(audio_map));

	/* Static setup for now */
	FUNC4(codec, "Headphone");
	FUNC4(codec, "Headset Earpiece");

	FUNC6(codec);
	return 0;
}