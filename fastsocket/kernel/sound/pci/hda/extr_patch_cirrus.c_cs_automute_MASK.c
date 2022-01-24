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
struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_2__ {int master_mute; scalar_t__ hp_jack_present; } ;
struct cs_spec {scalar_t__ gpio_data; scalar_t__ gpio_eapd_speaker; scalar_t__ gpio_eapd_hp; TYPE_1__ gen; scalar_t__ sense_b; scalar_t__ spdif_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	struct cs_spec *spec = codec->spec;

	/* mute HPs if spdif jack (SENSE_B) is present */
	spec->gen.master_mute = !!(spec->spdif_present && spec->sense_b);

	FUNC1(codec);

	if (spec->gpio_eapd_hp) {
		spec->gpio_data = spec->gen.hp_jack_present ?
			spec->gpio_eapd_hp : spec->gpio_eapd_speaker;
		FUNC0(codec, 0x01, 0,
				    AC_VERB_SET_GPIO_DATA, spec->gpio_data);
	}
}