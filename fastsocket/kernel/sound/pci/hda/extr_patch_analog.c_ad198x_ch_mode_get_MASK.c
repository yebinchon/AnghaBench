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
struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_channels; } ;
struct ad198x_spec {TYPE_1__ multiout; int /*<<< orphan*/  num_channel_mode; int /*<<< orphan*/  channel_mode; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,struct snd_ctl_elem_value*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hda_codec* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC1(kcontrol);
	struct ad198x_spec *spec = codec->spec;
	return FUNC0(codec, ucontrol, spec->channel_mode,
				   spec->num_channel_mode, spec->multiout.max_channels);
}