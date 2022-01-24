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
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*) ; 
 int /*<<< orphan*/  tlv320aic23_dapm_widgets ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec)
{

	/* Add afeb9260 specific widgets */
	FUNC3(codec, tlv320aic23_dapm_widgets,
				  FUNC0(tlv320aic23_dapm_widgets));

	/* Set up afeb9260 specific audio path audio_map */
	FUNC1(codec, audio_map, FUNC0(audio_map));

	FUNC2(codec, "Headphone Jack");
	FUNC2(codec, "Line In");
	FUNC2(codec, "Mic Jack");

	FUNC4(codec);

	return 0;
}