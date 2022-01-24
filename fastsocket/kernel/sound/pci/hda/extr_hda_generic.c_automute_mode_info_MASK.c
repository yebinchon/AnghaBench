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
struct hda_gen_spec {scalar_t__ automute_lo_possible; scalar_t__ automute_speaker_possible; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ; 
 int FUNC1 (struct snd_kcontrol*,struct snd_ctl_elem_info*,int,char const* const*) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_info *uinfo)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct hda_gen_spec *spec = codec->spec;
	static const char * const texts3[] = {
		"Disabled", "Speaker Only", "Line Out+Speaker"
	};

	if (spec->automute_speaker_possible && spec->automute_lo_possible)
		return FUNC1(kcontrol, uinfo, 3, texts3);
	return FUNC0(kcontrol, uinfo);
}