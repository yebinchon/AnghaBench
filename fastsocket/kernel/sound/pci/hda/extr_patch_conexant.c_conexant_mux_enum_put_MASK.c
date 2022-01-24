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
struct snd_ctl_elem_value {int /*<<< orphan*/  id; } ;
struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int /*<<< orphan*/ * cur_mux; int /*<<< orphan*/ * capsrc_nids; int /*<<< orphan*/  input_mux; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,struct snd_ctl_elem_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				 struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC2(kcontrol);
	struct conexant_spec *spec = codec->spec;
	unsigned int adc_idx = FUNC0(kcontrol, &ucontrol->id);

	return FUNC1(codec, spec->input_mux, ucontrol,
				     spec->capsrc_nids[adc_idx],
				     &spec->cur_mux[adc_idx]);
}