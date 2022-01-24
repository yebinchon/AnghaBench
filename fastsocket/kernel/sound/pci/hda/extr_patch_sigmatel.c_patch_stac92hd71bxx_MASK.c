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
struct sigmatel_spec {int have_spdif_mux; int gpio_mask; int gpio_dir; int gpio_data; int stream_delay; int aloopback_mask; int powerdown_adcs; int /*<<< orphan*/  pwr_nids; int /*<<< orphan*/  num_pwrs; TYPE_1__ gen; scalar_t__ aloopback_shift; int /*<<< orphan*/ * aloopback_ctl; scalar_t__ linear_tone_beep; } ;
struct hda_verb {int dummy; } ;
struct hda_codec {int vendor_id; int revision_id; int /*<<< orphan*/  proc_widget_hook; int /*<<< orphan*/  patch_ops; struct sigmatel_spec* spec; } ;

/* Variables and functions */
 int AC_WCAP_IN_AMP ; 
 scalar_t__ AC_WID_VOL_KNB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,struct hda_verb const*) ; 
 int /*<<< orphan*/  stac92hd71bxx_core_init ; 
 int /*<<< orphan*/  stac92hd71bxx_fixup_tbl ; 
 int /*<<< orphan*/  stac92hd71bxx_fixups ; 
 int /*<<< orphan*/  stac92hd71bxx_loopback ; 
 int /*<<< orphan*/  stac92hd71bxx_models ; 
 int /*<<< orphan*/  stac92hd71bxx_pwr_nids ; 
 struct hda_verb* stac92hd71bxx_unmute_core_init ; 
 int /*<<< orphan*/  stac92hd7x_proc_hook ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int FUNC10 (struct hda_codec*) ; 
 int /*<<< orphan*/  stac_patch_ops ; 
 int /*<<< orphan*/  FUNC11 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC12(struct hda_codec *codec)
{
	struct sigmatel_spec *spec;
	const struct hda_verb *unmute_init = stac92hd71bxx_unmute_core_init;
	int err;

	err = FUNC1(codec);
	if (err < 0)
		return err;

	spec = codec->spec;
	spec->linear_tone_beep = 0;
	spec->gen.own_eapd_ctl = 1;
	spec->gen.power_down_unused = 1;
	spec->gen.mixer_nid = 0x17;
	spec->have_spdif_mux = 1;

	codec->patch_ops = stac_patch_ops;

	/* GPIO0 = EAPD */
	spec->gpio_mask = 0x01;
	spec->gpio_dir = 0x01;
	spec->gpio_data = 0x01;

	switch (codec->vendor_id) {
	case 0x111d76b6: /* 4 Port without Analog Mixer */
	case 0x111d76b7:
		unmute_init++;
		break;
	case 0x111d7608: /* 5 Port with Analog Mixer */
		if ((codec->revision_id & 0xf) == 0 ||
		    (codec->revision_id & 0xf) == 1)
			spec->stream_delay = 40; /* 40 milliseconds */

		/* disable VSW */
		unmute_init++;
		FUNC6(codec, 0x0f, 0x40f000f0);
		FUNC6(codec, 0x19, 0x40f000f3);
		break;
	case 0x111d7603: /* 6 Port with Analog Mixer */
		if ((codec->revision_id & 0xf) == 1)
			spec->stream_delay = 40; /* 40 milliseconds */

		break;
	}

	if (FUNC3(FUNC2(codec, 0x28)) == AC_WID_VOL_KNB)
		FUNC4(codec, stac92hd71bxx_core_init);

	if (FUNC2(codec, 0xa) & AC_WCAP_IN_AMP)
		FUNC8(codec, unmute_init);

	spec->aloopback_ctl = &stac92hd71bxx_loopback;
	spec->aloopback_mask = 0x50;
	spec->aloopback_shift = 0;

	spec->powerdown_adcs = 1;
	spec->gen.beep_nid = 0x26; /* digital beep */
	spec->num_pwrs = FUNC0(stac92hd71bxx_pwr_nids);
	spec->pwr_nids = stac92hd71bxx_pwr_nids;

	FUNC7(codec, stac92hd71bxx_models, stac92hd71bxx_fixup_tbl,
			   stac92hd71bxx_fixups);
	FUNC5(codec, HDA_FIXUP_ACT_PRE_PROBE);

	FUNC11(codec);

	err = FUNC10(codec);
	if (err < 0) {
		FUNC9(codec);
		return err;
	}

	codec->proc_widget_hook = stac92hd7x_proc_hook;

	FUNC5(codec, HDA_FIXUP_ACT_PROBE);

	return 0;
}