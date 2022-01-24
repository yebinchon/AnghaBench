#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; } ;
struct hda_codec {int vendor_id; TYPE_5__ patch_ops; TYPE_3__* bus; struct alc_spec* spec; } ;
struct TYPE_9__ {int shared_mic_vref_pin; int beep_nid; int /*<<< orphan*/  no_analog; } ;
struct TYPE_6__ {int platform_type; } ;
struct alc_spec {int has_alc5505_dsp; int /*<<< orphan*/  shutup; TYPE_4__ gen; int /*<<< orphan*/  (* init_hook ) (struct hda_codec*) ;int /*<<< orphan*/  codec_variant; TYPE_1__ cdefine; } ;
struct TYPE_8__ {TYPE_2__* pci; } ;
struct TYPE_7__ {int subsystem_vendor; int subsystem_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_PARAMETERS ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC269VA ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC269VB ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC269VC ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC269VD ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC280 ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC282 ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC284 ; 
 int /*<<< orphan*/  ALC269_TYPE_ALC286 ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  HDA_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc269_fixup_models ; 
 int /*<<< orphan*/  alc269_fixup_tbl ; 
 int /*<<< orphan*/  alc269_fixups ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc269_resume ; 
 int /*<<< orphan*/  alc269_shutup ; 
 int /*<<< orphan*/  alc269_suspend ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int FUNC3 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int FUNC5 (struct hda_codec*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 
 int FUNC8 (struct hda_codec*) ; 
 TYPE_5__ alc_patch_ops ; 
 scalar_t__ FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct alc_spec*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct hda_codec *codec)
{
	struct alc_spec *spec;
	int err;

	err = FUNC3(codec, 0x0b);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->gen.shared_mic_vref_pin = 0x18;

	FUNC13(codec, alc269_fixup_models,
		       alc269_fixup_tbl, alc269_fixups);
	FUNC11(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC4(codec);

	if (FUNC9(codec))
		spec->gen.beep_nid = 0x01;

	switch (codec->vendor_id) {
	case 0x10ec0269:
		spec->codec_variant = ALC269_TYPE_ALC269VA;
		switch (FUNC8(codec) & 0x00f0) {
		case 0x0010:
			if (codec->bus->pci->subsystem_vendor == 0x1025 &&
			    spec->cdefine.platform_type == 1)
				err = FUNC5(codec, "ALC271X");
			spec->codec_variant = ALC269_TYPE_ALC269VB;
			break;
		case 0x0020:
			if (codec->bus->pci->subsystem_vendor == 0x17aa &&
			    codec->bus->pci->subsystem_device == 0x21f3)
				err = FUNC5(codec, "ALC3202");
			spec->codec_variant = ALC269_TYPE_ALC269VC;
			break;
		case 0x0030:
			spec->codec_variant = ALC269_TYPE_ALC269VD;
			break;
		default:
			FUNC6(codec, 0x20, 0x04, 15);
		}
		if (err < 0)
			goto error;
		spec->init_hook = alc269_fill_coef;
		FUNC0(codec);
		break;

	case 0x10ec0280:
	case 0x10ec0290:
		spec->codec_variant = ALC269_TYPE_ALC280;
		break;
	case 0x10ec0233:
	case 0x10ec0282:
	case 0x10ec0283:
		spec->codec_variant = ALC269_TYPE_ALC282;
		break;
	case 0x10ec0284:
	case 0x10ec0292:
		spec->codec_variant = ALC269_TYPE_ALC284;
		break;
	case 0x10ec0286:
		spec->codec_variant = ALC269_TYPE_ALC286;
		break;
	}

	if (FUNC12(codec, 0x51, 0, AC_VERB_PARAMETERS, 0) == 0x10ec5505) {
		spec->has_alc5505_dsp = true;
		spec->init_hook = alc5505_dsp_init;
	}

	/* automatic parse from the BIOS config */
	err = FUNC1(codec);
	if (err < 0)
		goto error;

	if (!spec->gen.no_analog && spec->gen.beep_nid)
		FUNC10(spec, 0x0b, 0x04, HDA_INPUT);

	codec->patch_ops = alc_patch_ops;
#ifdef CONFIG_PM
	codec->patch_ops.suspend = alc269_suspend;
	codec->patch_ops.resume = alc269_resume;
#endif
	spec->shutup = alc269_shutup;

	FUNC11(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC7(codec);
	return err;
}