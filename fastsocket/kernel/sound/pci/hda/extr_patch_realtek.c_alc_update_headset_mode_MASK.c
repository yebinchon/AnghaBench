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
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_3__ {scalar_t__* hp_pins; } ;
struct TYPE_4__ {scalar_t__* imux_pins; size_t* cur_mux; int hp_jack_present; TYPE_1__ autocfg; } ;
struct alc_spec {scalar_t__ headset_mic_pin; scalar_t__ headphone_mic_pin; int current_headset_mode; TYPE_2__ gen; int /*<<< orphan*/  current_headset_type; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int AC_PINCTL_HP_EN ; 
 int AC_PINCTL_OUT_EN ; 
#define  ALC_HEADSET_MODE_HEADPHONE 131 
#define  ALC_HEADSET_MODE_HEADSET 130 
#define  ALC_HEADSET_MODE_MIC 129 
#define  ALC_HEADSET_MODE_UNPLUGGED 128 
 int /*<<< orphan*/  ALC_HEADSET_TYPE_CTIA ; 
 int /*<<< orphan*/  ALC_HEADSET_TYPE_OMTP ; 
 int /*<<< orphan*/  ALC_HEADSET_TYPE_UNKNOWN ; 
 int PIN_VREFHIZ ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct hda_codec*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;

	hda_nid_t mux_pin = spec->gen.imux_pins[spec->gen.cur_mux[0]];
	hda_nid_t hp_pin = spec->gen.autocfg.hp_pins[0];

	int new_headset_mode;

	if (!FUNC7(codec, hp_pin))
		new_headset_mode = ALC_HEADSET_MODE_UNPLUGGED;
	else if (mux_pin == spec->headset_mic_pin)
		new_headset_mode = ALC_HEADSET_MODE_HEADSET;
	else if (mux_pin == spec->headphone_mic_pin)
		new_headset_mode = ALC_HEADSET_MODE_MIC;
	else
		new_headset_mode = ALC_HEADSET_MODE_HEADPHONE;

	if (new_headset_mode == spec->current_headset_mode)
		return;

	switch (new_headset_mode) {
	case ALC_HEADSET_MODE_UNPLUGGED:
		FUNC5(codec);
		spec->gen.hp_jack_present = false;
		break;
	case ALC_HEADSET_MODE_HEADSET:
		if (spec->current_headset_type == ALC_HEADSET_TYPE_UNKNOWN)
			FUNC0(codec);
		if (spec->current_headset_type == ALC_HEADSET_TYPE_CTIA)
			FUNC1(codec);
		else if (spec->current_headset_type == ALC_HEADSET_TYPE_OMTP)
			FUNC4(codec);
		spec->gen.hp_jack_present = true;
		break;
	case ALC_HEADSET_MODE_MIC:
		FUNC3(codec, hp_pin, spec->headphone_mic_pin);
		spec->gen.hp_jack_present = false;
		break;
	case ALC_HEADSET_MODE_HEADPHONE:
		FUNC2(codec);
		spec->gen.hp_jack_present = true;
		break;
	}
	if (new_headset_mode != ALC_HEADSET_MODE_MIC) {
		FUNC8(codec, hp_pin,
					  AC_PINCTL_OUT_EN | AC_PINCTL_HP_EN);
		if (spec->headphone_mic_pin)
			FUNC8(codec, spec->headphone_mic_pin,
						  PIN_VREFHIZ);
	}
	spec->current_headset_mode = new_headset_mode;

	FUNC6(codec);
}