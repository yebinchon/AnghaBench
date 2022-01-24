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
#define  MAGICIAN_MIC 129 
#define  MAGICIAN_MIC_EXT 128 
 scalar_t__ magician_hp_switch ; 
 int magician_in_sel ; 
 scalar_t__ magician_spk_switch ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_codec*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_codec*) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_codec *codec)
{
	if (magician_spk_switch)
		FUNC1(codec, "Speaker");
	else
		FUNC0(codec, "Speaker");
	if (magician_hp_switch)
		FUNC1(codec, "Headphone Jack");
	else
		FUNC0(codec, "Headphone Jack");

	switch (magician_in_sel) {
	case MAGICIAN_MIC:
		FUNC0(codec, "Headset Mic");
		FUNC1(codec, "Call Mic");
		break;
	case MAGICIAN_MIC_EXT:
		FUNC0(codec, "Call Mic");
		FUNC1(codec, "Headset Mic");
		break;
	}

	FUNC2(codec);
}