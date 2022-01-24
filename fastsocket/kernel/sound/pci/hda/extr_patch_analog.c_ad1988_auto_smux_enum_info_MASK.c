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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_info*,int,char const* const*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	static const char * const texts[] = {
		"PCM", "ADC1", "ADC2", "ADC3",
	};
	int num_conns = FUNC1(codec, 0x0b) + 1;
	if (num_conns > 4)
		num_conns = 4;
	return FUNC0(kcontrol, uinfo, num_conns, texts);
}