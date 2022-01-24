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
struct snd_kcontrol {int count; } ;
struct hda_codec {struct cmi_spec* spec; } ;
struct TYPE_2__ {int share_spdif; scalar_t__ dig_out_nid; } ;
struct cmi_spec {int /*<<< orphan*/ * adc_nids; scalar_t__ dig_in_nid; TYPE_1__ multiout; scalar_t__ channel_modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmi9880_basic_mixer ; 
 int /*<<< orphan*/  cmi9880_ch_mode_mixer ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,struct snd_kcontrol*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,scalar_t__) ; 
 int FUNC3 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int FUNC4 (struct hda_codec*,TYPE_1__*) ; 
 struct snd_kcontrol* FUNC5 (struct hda_codec*,char*) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	struct cmi_spec *spec = codec->spec;
	struct snd_kcontrol *kctl;
	int i, err;

	err = FUNC0(codec, cmi9880_basic_mixer);
	if (err < 0)
		return err;
	if (spec->channel_modes) {
		err = FUNC0(codec, cmi9880_ch_mode_mixer);
		if (err < 0)
			return err;
	}
	if (spec->multiout.dig_out_nid) {
		err = FUNC3(codec,
						    spec->multiout.dig_out_nid,
						    spec->multiout.dig_out_nid);
		if (err < 0)
			return err;
		err = FUNC4(codec,
						    &spec->multiout);
		if (err < 0)
			return err;
		spec->multiout.share_spdif = 1;
	}
	if (spec->dig_in_nid) {
		err = FUNC2(codec, spec->dig_in_nid);
		if (err < 0)
			return err;
	}

	/* assign Capture Source enums to NID */
	kctl = FUNC5(codec, "Capture Source");
	for (i = 0; kctl && i < kctl->count; i++) {
		err = FUNC1(codec, kctl, i, spec->adc_nids[i]);
		if (err < 0)
			return err;
	}
	return 0;
}