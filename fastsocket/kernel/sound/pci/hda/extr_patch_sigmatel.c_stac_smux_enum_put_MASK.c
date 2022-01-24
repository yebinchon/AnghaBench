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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/ * dig_out_pins; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct sigmatel_spec {int /*<<< orphan*/ * cur_smux; TYPE_2__ gen; int /*<<< orphan*/  spdif_mux; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ *,struct snd_ctl_elem_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct sigmatel_spec *spec = codec->spec;
	unsigned int smux_idx = FUNC0(kcontrol, &ucontrol->id);

	return FUNC1(codec, &spec->spdif_mux, ucontrol,
				     spec->gen.autocfg.dig_out_pins[smux_idx],
				     &spec->cur_smux[smux_idx]);
}