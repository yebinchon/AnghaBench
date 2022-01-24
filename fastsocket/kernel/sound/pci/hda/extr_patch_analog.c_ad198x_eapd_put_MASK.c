#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {scalar_t__ inv_eapd; struct ad198x_spec* spec; } ;
struct ad198x_spec {unsigned int cur_eapd; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_EAPD_BTLENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct ad198x_spec *spec = codec->spec;
	hda_nid_t nid = kcontrol->private_value & 0xff;
	unsigned int eapd;
	eapd = !!ucontrol->value.integer.value[0];
	if (codec->inv_eapd)
		eapd = !eapd;
	if (eapd == spec->cur_eapd)
		return 0;
	spec->cur_eapd = eapd;
	FUNC0(codec, nid,
				  0, AC_VERB_SET_EAPD_BTLENABLE,
				  eapd ? 0x02 : 0x00);
	return 1;
}