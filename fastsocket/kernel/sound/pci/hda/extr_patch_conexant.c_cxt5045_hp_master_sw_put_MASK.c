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
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ cur_eapd; int /*<<< orphan*/  hp_present; } ;

/* Variables and functions */
 unsigned int HDA_AMP_MUTE ; 
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				    struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct conexant_spec *spec = codec->spec;
	unsigned int bits;

	if (!FUNC0(kcontrol, ucontrol))
		return 0;

	/* toggle internal speakers mute depending of presence of
	 * the headphone jack
	 */
	bits = (!spec->hp_present && spec->cur_eapd) ? 0 : HDA_AMP_MUTE;
	FUNC1(codec, 0x10, HDA_OUTPUT, 0,
				 HDA_AMP_MUTE, bits);

	bits = spec->cur_eapd ? 0 : HDA_AMP_MUTE;
	FUNC1(codec, 0x11, HDA_OUTPUT, 0,
				 HDA_AMP_MUTE, bits);
	return 1;
}