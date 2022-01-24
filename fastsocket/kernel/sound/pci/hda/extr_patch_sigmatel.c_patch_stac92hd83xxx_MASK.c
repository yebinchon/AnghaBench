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
struct TYPE_2__ {int own_eapd_ctl; int power_down_unused; int mixer_nid; int beep_nid; } ;
struct sigmatel_spec {int default_polarity; int /*<<< orphan*/  num_pwrs; int /*<<< orphan*/  pwr_nids; TYPE_1__ gen; scalar_t__ linear_tone_beep; } ;
struct hda_codec {int /*<<< orphan*/  proc_widget_hook; int /*<<< orphan*/  patch_ops; struct sigmatel_spec* spec; scalar_t__ epss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac92hd83xxx_core_init ; 
 int /*<<< orphan*/  stac92hd83xxx_fixup_tbl ; 
 int /*<<< orphan*/  stac92hd83xxx_fixups ; 
 int /*<<< orphan*/  stac92hd83xxx_models ; 
 int /*<<< orphan*/  stac92hd83xxx_pwr_nids ; 
 int /*<<< orphan*/  stac92hd_proc_hook ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  stac_patch_ops ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;
	int err;

	err = FUNC1(codec);
	if (err < 0)
		return err;

	codec->epss = 0; /* longer delay needed for D3 */

	spec = codec->spec;
	spec->linear_tone_beep = 0;
	spec->gen.own_eapd_ctl = 1;
	spec->gen.power_down_unused = 1;
	spec->gen.mixer_nid = 0x1b;

	spec->gen.beep_nid = 0x21; /* digital beep */
	spec->pwr_nids = stac92hd83xxx_pwr_nids;
	spec->num_pwrs = FUNC0(stac92hd83xxx_pwr_nids);
	spec->default_polarity = -1; /* no default cfg */

	codec->patch_ops = stac_patch_ops;

	FUNC2(codec, stac92hd83xxx_core_init);

	FUNC4(codec, stac92hd83xxx_models, stac92hd83xxx_fixup_tbl,
			   stac92hd83xxx_fixups);
	FUNC3(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC7(codec);

	err = FUNC6(codec);
	if (err < 0) {
		FUNC5(codec);
		return err;
	}

	codec->proc_widget_hook = stac92hd_proc_hook;

	FUNC3(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}