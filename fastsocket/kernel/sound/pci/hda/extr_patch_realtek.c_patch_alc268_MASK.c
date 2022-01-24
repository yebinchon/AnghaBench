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
struct hda_codec {int /*<<< orphan*/  patch_ops; struct alc_spec* spec; } ;
struct TYPE_3__ {int* speaker_pins; } ;
struct TYPE_4__ {int beep_nid; TYPE_1__ autocfg; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {int /*<<< orphan*/  shutup; TYPE_2__ gen; } ;

/* Variables and functions */
 int AC_AMPCAP_MUTE_SHIFT ; 
 int AC_AMPCAP_NUM_STEPS_SHIFT ; 
 int AC_AMPCAP_OFFSET_SHIFT ; 
 int AC_AMPCAP_STEP_SIZE_SHIFT ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct alc_spec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alc268_beep_init_verbs ; 
 int /*<<< orphan*/  alc268_beep_mixer ; 
 int /*<<< orphan*/  alc268_fixup_models ; 
 int /*<<< orphan*/  alc268_fixup_tbl ; 
 int /*<<< orphan*/  alc268_fixups ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alc_eapd_shutup ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_patch_ops ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	/* ALC268 has no aa-loopback mixer */
	err = FUNC2(codec, 0);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->gen.beep_nid = 0x01;

	FUNC8(codec, alc268_fixup_models, alc268_fixup_tbl, alc268_fixups);
	FUNC6(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/* automatic parse from the BIOS config */
	err = FUNC1(codec);
	if (err < 0)
		goto error;

	if (err > 0 && !spec->gen.no_analog &&
	    spec->gen.autocfg.speaker_pins[0] != 0x1d) {
		FUNC0(spec, alc268_beep_mixer);
		FUNC5(codec, alc268_beep_init_verbs);
		if (!FUNC4(codec, 0x1d, HDA_INPUT))
			/* override the amp caps for beep generator */
			FUNC7(codec, 0x1d, HDA_INPUT,
					  (0x0c << AC_AMPCAP_OFFSET_SHIFT) |
					  (0x0c << AC_AMPCAP_NUM_STEPS_SHIFT) |
					  (0x07 << AC_AMPCAP_STEP_SIZE_SHIFT) |
					  (0 << AC_AMPCAP_MUTE_SHIFT));
	}

	codec->patch_ops = alc_patch_ops;
	spec->shutup = alc_eapd_shutup;

	FUNC6(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC3(codec);
	return err;
}