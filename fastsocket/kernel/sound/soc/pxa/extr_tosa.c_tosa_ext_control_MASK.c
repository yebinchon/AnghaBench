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
#define  TOSA_HEADSET 130 
#define  TOSA_HP 129 
#define  TOSA_MIC_INT 128 
 scalar_t__ TOSA_SPK_ON ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*) ; 
 int tosa_jack_func ; 
 scalar_t__ tosa_spk_func ; 

__attribute__((used)) static void FUNC3(struct snd_soc_codec *codec)
{
	/* set up jack connection */
	switch (tosa_jack_func) {
	case TOSA_HP:
		FUNC0(codec, "Mic (Internal)");
		FUNC1(codec, "Headphone Jack");
		FUNC0(codec, "Headset Jack");
		break;
	case TOSA_MIC_INT:
		FUNC1(codec, "Mic (Internal)");
		FUNC0(codec, "Headphone Jack");
		FUNC0(codec, "Headset Jack");
		break;
	case TOSA_HEADSET:
		FUNC0(codec, "Mic (Internal)");
		FUNC0(codec, "Headphone Jack");
		FUNC1(codec, "Headset Jack");
		break;
	}

	if (tosa_spk_func == TOSA_SPK_ON)
		FUNC1(codec, "Speaker");
	else
		FUNC0(codec, "Speaker");

	FUNC2(codec);
}