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
#define  N810_JACK_HP 130 
#define  N810_JACK_HS 129 
#define  N810_JACK_MIC 128 
 scalar_t__ n810_dmic_func ; 
 int n810_jack_func ; 
 scalar_t__ n810_spk_func ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_codec *codec)
{
	int hp = 0, line1l = 0;

	switch (n810_jack_func) {
	case N810_JACK_HS:
		line1l = 1;
	case N810_JACK_HP:
		hp = 1;
		break;
	case N810_JACK_MIC:
		line1l = 1;
		break;
	}

	if (n810_spk_func)
		FUNC1(codec, "Ext Spk");
	else
		FUNC0(codec, "Ext Spk");

	if (hp)
		FUNC1(codec, "Headphone Jack");
	else
		FUNC0(codec, "Headphone Jack");
	if (line1l)
		FUNC1(codec, "LINE1L");
	else
		FUNC0(codec, "LINE1L");

	if (n810_dmic_func)
		FUNC1(codec, "DMic");
	else
		FUNC0(codec, "DMic");

	FUNC2(codec);
}