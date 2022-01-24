#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ hook; int /*<<< orphan*/  sw_kctl; } ;
struct TYPE_7__ {int share_spdif; scalar_t__ dig_out_nid; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; scalar_t__ used; } ;
struct hda_gen_spec {int /*<<< orphan*/  autocfg; int /*<<< orphan*/  vmaster_mute_enum; TYPE_4__ vmaster_mute; int /*<<< orphan*/  no_analog; int /*<<< orphan*/  vmaster_tlv; scalar_t__ dig_in_nid; TYPE_3__ multiout; TYPE_2__* pcm_rec; TYPE_1__ kctls; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct TYPE_6__ {int /*<<< orphan*/  pcm_type; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_gen_spec*) ; 
 int /*<<< orphan*/  slave_pfxs ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hda_codec*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct hda_codec*,scalar_t__) ; 
 int FUNC7 (struct hda_codec*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,char*) ; 
 int FUNC9 (struct hda_codec*,int /*<<< orphan*/ *) ; 

int FUNC10(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	int err;

	if (spec->kctls.used) {
		err = FUNC2(codec, spec->kctls.list);
		if (err < 0)
			return err;
	}

	if (spec->multiout.dig_out_nid) {
		err = FUNC5(codec,
						  spec->multiout.dig_out_nid,
						  spec->multiout.dig_out_nid,
						  spec->pcm_rec[1].pcm_type);
		if (err < 0)
			return err;
		if (!spec->no_analog) {
			err = FUNC7(codec,
							    &spec->multiout);
			if (err < 0)
				return err;
			spec->multiout.share_spdif = 1;
		}
	}
	if (spec->dig_in_nid) {
		err = FUNC6(codec, spec->dig_in_nid);
		if (err < 0)
			return err;
	}

	/* if we have no master control, let's create it */
	if (!spec->no_analog &&
	    !FUNC8(codec, "Master Playback Volume")) {
		err = FUNC3(codec, "Master Playback Volume",
					  spec->vmaster_tlv, slave_pfxs,
					  "Playback Volume");
		if (err < 0)
			return err;
	}
	if (!spec->no_analog &&
	    !FUNC8(codec, "Master Playback Switch")) {
		err = FUNC0(codec, "Master Playback Switch",
					    NULL, slave_pfxs,
					    "Playback Switch",
					    true, &spec->vmaster_mute.sw_kctl);
		if (err < 0)
			return err;
		if (spec->vmaster_mute.hook)
			FUNC4(codec, &spec->vmaster_mute,
						 spec->vmaster_mute_enum);
	}

	FUNC1(spec); /* no longer needed */

	err = FUNC9(codec, &spec->autocfg);
	if (err < 0)
		return err;

	return 0;
}