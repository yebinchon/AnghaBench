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
struct hda_codec {int /*<<< orphan*/  patch_ops; struct alc_spec* spec; } ;
struct TYPE_2__ {int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct alc_spec {int /*<<< orphan*/  shutup; TYPE_1__ gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  alc861vd_fixup_tbl ; 
 int /*<<< orphan*/  alc861vd_fixups ; 
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  alc_eapd_shutup ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_patch_ops ; 
 int /*<<< orphan*/  FUNC3 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC1(codec, 0x0b);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->gen.beep_nid = 0x23;

	FUNC5(codec, NULL, alc861vd_fixup_tbl, alc861vd_fixups);
	FUNC4(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog)
		FUNC3(spec, 0x0b, 0x05, HDA_INPUT);

	codec->patch_ops = alc_patch_ops;

	spec->shutup = alc_eapd_shutup;

	FUNC4(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC2(codec);
	return err;
}