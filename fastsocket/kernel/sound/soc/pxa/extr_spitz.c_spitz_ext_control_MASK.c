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
 int /*<<< orphan*/  SPITZ_GPIO_MUTE_L ; 
 int /*<<< orphan*/  SPITZ_GPIO_MUTE_R ; 
#define  SPITZ_HEADSET 132 
#define  SPITZ_HP 131 
#define  SPITZ_HP_OFF 130 
#define  SPITZ_LINE 129 
#define  SPITZ_MIC 128 
 scalar_t__ SPITZ_SPK_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_codec*) ; 
 int spitz_jack_func ; 
 scalar_t__ spitz_spk_func ; 

__attribute__((used)) static void FUNC4(struct snd_soc_codec *codec)
{
	if (spitz_spk_func == SPITZ_SPK_ON)
		FUNC2(codec, "Ext Spk");
	else
		FUNC1(codec, "Ext Spk");

	/* set up jack connection */
	switch (spitz_jack_func) {
	case SPITZ_HP:
		/* enable and unmute hp jack, disable mic bias */
		FUNC1(codec, "Headset Jack");
		FUNC1(codec, "Mic Jack");
		FUNC1(codec, "Line Jack");
		FUNC2(codec, "Headphone Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 1);
		FUNC0(SPITZ_GPIO_MUTE_R, 1);
		break;
	case SPITZ_MIC:
		/* enable mic jack and bias, mute hp */
		FUNC1(codec, "Headphone Jack");
		FUNC1(codec, "Headset Jack");
		FUNC1(codec, "Line Jack");
		FUNC2(codec, "Mic Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 0);
		break;
	case SPITZ_LINE:
		/* enable line jack, disable mic bias and mute hp */
		FUNC1(codec, "Headphone Jack");
		FUNC1(codec, "Headset Jack");
		FUNC1(codec, "Mic Jack");
		FUNC2(codec, "Line Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 0);
		break;
	case SPITZ_HEADSET:
		/* enable and unmute headset jack enable mic bias, mute L hp */
		FUNC1(codec, "Headphone Jack");
		FUNC2(codec, "Mic Jack");
		FUNC1(codec, "Line Jack");
		FUNC2(codec, "Headset Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 1);
		break;
	case SPITZ_HP_OFF:

		/* jack removed, everything off */
		FUNC1(codec, "Headphone Jack");
		FUNC1(codec, "Headset Jack");
		FUNC1(codec, "Mic Jack");
		FUNC1(codec, "Line Jack");
		FUNC0(SPITZ_GPIO_MUTE_L, 0);
		FUNC0(SPITZ_GPIO_MUTE_R, 0);
		break;
	}
	FUNC3(codec);
}