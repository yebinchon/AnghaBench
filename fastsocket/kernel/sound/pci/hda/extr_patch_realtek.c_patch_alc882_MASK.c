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
struct hda_codec {int vendor_id; int /*<<< orphan*/  patch_ops; struct alc_spec* spec; } ;
struct TYPE_2__ {int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {TYPE_1__ gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  alc882_fixup_models ; 
 int /*<<< orphan*/  alc882_fixup_tbl ; 
 int /*<<< orphan*/  alc882_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_patch_ops ; 
 scalar_t__ FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC1(codec, 0x0b);
	if (err < 0)
		return err;

	spec = codec->spec;

	switch (codec->vendor_id) {
	case 0x10ec0882:
	case 0x10ec0885:
		break;
	default:
		/* ALC883 and variants */
		FUNC3(codec, 0x20, 0x0a, 10);
		break;
	}

	FUNC8(codec, alc882_fixup_models, alc882_fixup_tbl,
		       alc882_fixups);
	FUNC7(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC2(codec);

	if (FUNC5(codec))
		spec->gen.beep_nid = 0x01;

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog && spec->gen.beep_nid)
		FUNC6(spec, 0x0b, 0x05, HDA_INPUT);

	codec->patch_ops = alc_patch_ops;

	FUNC7(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC4(codec);
	return err;
}