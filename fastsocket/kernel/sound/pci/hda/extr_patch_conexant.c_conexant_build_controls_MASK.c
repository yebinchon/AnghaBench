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
struct hda_codec {struct conexant_spec* spec; } ;
struct TYPE_2__ {int share_spdif; scalar_t__ dig_out_nid; } ;
struct conexant_spec {unsigned int num_mixers; scalar_t__ input_mux; scalar_t__ vmaster_nid; scalar_t__ dig_in_nid; TYPE_1__ multiout; int /*<<< orphan*/ * mixers; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_OUTPUT ; 
 int FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  cxt_capture_mixers ; 
 int /*<<< orphan*/  slave_pfxs ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,char*,unsigned int*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct hda_codec*,scalar_t__) ; 
 int FUNC4 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int FUNC5 (struct hda_codec*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;
	unsigned int i;
	int err;

	for (i = 0; i < spec->num_mixers; i++) {
		err = FUNC1(codec, spec->mixers[i]);
		if (err < 0)
			return err;
	}
	if (spec->multiout.dig_out_nid) {
		err = FUNC4(codec,
						    spec->multiout.dig_out_nid,
						    spec->multiout.dig_out_nid);
		if (err < 0)
			return err;
		err = FUNC5(codec,
						    &spec->multiout);
		if (err < 0)
			return err;
		spec->multiout.share_spdif = 1;
	} 
	if (spec->dig_in_nid) {
		err = FUNC3(codec,spec->dig_in_nid);
		if (err < 0)
			return err;
	}

	/* if we have no master control, let's create it */
	if (spec->vmaster_nid &&
	    !FUNC6(codec, "Master Playback Volume")) {
		unsigned int vmaster_tlv[4];
		FUNC7(codec, spec->vmaster_nid,
					HDA_OUTPUT, vmaster_tlv);
		err = FUNC2(codec, "Master Playback Volume",
					  vmaster_tlv, slave_pfxs,
					  "Playback Volume");
		if (err < 0)
			return err;
	}
	if (spec->vmaster_nid &&
	    !FUNC6(codec, "Master Playback Switch")) {
		err = FUNC2(codec, "Master Playback Switch",
					  NULL, slave_pfxs,
					  "Playback Switch");
		if (err < 0)
			return err;
	}

	if (spec->input_mux) {
		err = FUNC1(codec, cxt_capture_mixers);
		if (err < 0)
			return err;
	}

	err = FUNC0(codec);
	if (err < 0)
		return err;

	return 0;
}