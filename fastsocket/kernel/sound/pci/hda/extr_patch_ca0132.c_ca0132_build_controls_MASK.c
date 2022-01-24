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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int num_mixers; scalar_t__ dig_in; int /*<<< orphan*/  multiout; scalar_t__ dig_out; int /*<<< orphan*/  autocfg; int /*<<< orphan*/ * mixers; } ;
struct TYPE_2__ {char* name; int direct; int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYSTAL_VOICE ; 
 int IN_EFFECTS_COUNT ; 
 int OUT_EFFECTS_COUNT ; 
 int /*<<< orphan*/  PLAY_ENHANCEMENT ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 TYPE_1__* ca0132_effects ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hda_codec*,scalar_t__) ; 
 int FUNC5 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct hda_codec*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	int i, num_fx;
	int err = 0;

	/* Add Mixer controls */
	for (i = 0; i < spec->num_mixers; i++) {
		err = FUNC3(codec, spec->mixers[i]);
		if (err < 0)
			return err;
	}

	/* Add in and out effects controls.
	 * VoiceFX, PE and CrystalVoice are added separately.
	 */
	num_fx = OUT_EFFECTS_COUNT + IN_EFFECTS_COUNT;
	for (i = 0; i < num_fx; i++) {
		err = FUNC0(codec, ca0132_effects[i].nid,
				    ca0132_effects[i].name,
				    ca0132_effects[i].direct);
		if (err < 0)
			return err;
	}

	err = FUNC0(codec, PLAY_ENHANCEMENT, "PlayEnhancement", 0);
	if (err < 0)
		return err;

	err = FUNC0(codec, CRYSTAL_VOICE, "CrystalVoice", 1);
	if (err < 0)
		return err;

	FUNC2(codec);

#ifdef ENABLE_TUNING_CONTROLS
	add_tuning_ctls(codec);
#endif

	err = FUNC7(codec, &spec->autocfg);
	if (err < 0)
		return err;

	if (spec->dig_out) {
		err = FUNC5(codec, spec->dig_out,
						    spec->dig_out);
		if (err < 0)
			return err;
		err = FUNC6(codec, &spec->multiout);
		if (err < 0)
			return err;
		/* spec->multiout.share_spdif = 1; */
	}

	if (spec->dig_in) {
		err = FUNC4(codec, spec->dig_in);
		if (err < 0)
			return err;
	}
	return 0;
}