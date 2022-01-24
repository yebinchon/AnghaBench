#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_6__ {int* item; } ;
struct TYPE_4__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_5__ {int /*<<< orphan*/  dig_out_nid; } ;
struct ad198x_spec {int spdif_route; TYPE_2__ multiout; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_CONNECT_SEL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct ad198x_spec *spec = codec->spec;

	if (ucontrol->value.enumerated.item[0] > 1)
		return -EINVAL;
	if (spec->spdif_route != ucontrol->value.enumerated.item[0]) {
		spec->spdif_route = ucontrol->value.enumerated.item[0];
		FUNC0(codec, spec->multiout.dig_out_nid, 0,
					  AC_VERB_SET_CONNECT_SEL,
					  spec->spdif_route);
		return 1;
	}
	return 0;
}