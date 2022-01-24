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
struct hda_codec {int vendor_id; int /*<<< orphan*/  patch_ops; TYPE_2__* bus; struct alc_spec* spec; } ;
struct TYPE_8__ {int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct TYPE_7__ {int platform_type; } ;
struct alc_spec {int /*<<< orphan*/  shutup; TYPE_4__ gen; TYPE_3__ cdefine; int /*<<< orphan*/  (* init_hook ) (struct hda_codec*) ;int /*<<< orphan*/  parse_flags; } ;
struct TYPE_6__ {TYPE_1__* pci; } ;
struct TYPE_5__ {int subsystem_vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  HDA_PINCFG_NO_HP_FIXUP ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc662_fixup_models ; 
 int /*<<< orphan*/  alc662_fixup_tbl ; 
 int /*<<< orphan*/  alc662_fixups ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  alc_eapd_shutup ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int FUNC7 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_patch_ops ; 
 scalar_t__ FUNC8 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC9 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC2(codec, 0x0b);
	if (err < 0)
		return err;

	spec = codec->spec;

	/* handle multiple HPs as is */
	spec->parse_flags = HDA_PINCFG_NO_HP_FIXUP;

	FUNC5(codec, 0x20, 0x04, 15);

	spec->init_hook = alc662_fill_coef;
	FUNC0(codec);

	FUNC11(codec, alc662_fixup_models,
		       alc662_fixup_tbl, alc662_fixups);
	FUNC10(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC3(codec);

	if (FUNC8(codec))
		spec->gen.beep_nid = 0x01;

	if ((FUNC7(codec) & (1 << 14)) &&
	    codec->bus->pci->subsystem_vendor == 0x1025 &&
	    spec->cdefine.platform_type == 1) {
		err = FUNC4(codec, "ALC272X");
		if (err < 0)
			goto error;
	}

	/* automatic parse from the BIOS config */
	err = FUNC1(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog && spec->gen.beep_nid) {
		switch (codec->vendor_id) {
		case 0x10ec0662:
			FUNC9(spec, 0x0b, 0x05, HDA_INPUT);
			break;
		case 0x10ec0272:
		case 0x10ec0663:
		case 0x10ec0665:
			FUNC9(spec, 0x0b, 0x04, HDA_INPUT);
			break;
		case 0x10ec0273:
			FUNC9(spec, 0x0b, 0x03, HDA_INPUT);
			break;
		}
	}

	codec->patch_ops = alc_patch_ops;
	spec->shutup = alc_eapd_shutup;

	FUNC10(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC6(codec);
	return err;
}