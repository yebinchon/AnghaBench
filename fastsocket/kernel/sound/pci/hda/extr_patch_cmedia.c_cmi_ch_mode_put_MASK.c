#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_channels; } ;
struct cmi_spec {TYPE_1__ multiout; int /*<<< orphan*/  num_channel_modes; int /*<<< orphan*/  channel_modes; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,struct snd_ctl_elem_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct cmi_spec *spec = codec->spec;
	return FUNC0(codec, ucontrol, spec->channel_modes,
				   spec->num_channel_modes, &spec->multiout.max_channels);
}