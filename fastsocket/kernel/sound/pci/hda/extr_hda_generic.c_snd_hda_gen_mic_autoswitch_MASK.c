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
struct hda_jack_tbl {int dummy; } ;
struct hda_gen_spec {int am_num_entries; TYPE_1__* am_entry; int /*<<< orphan*/  auto_mic; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  idx; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int AC_PINCTL_OUT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 

void FUNC3(struct hda_codec *codec, struct hda_jack_tbl *jack)
{
	struct hda_gen_spec *spec = codec->spec;
	int i;

	if (!spec->auto_mic)
		return;

	for (i = spec->am_num_entries - 1; i > 0; i--) {
		hda_nid_t pin = spec->am_entry[i].pin;
		/* don't detect pins retasked as outputs */
		if (FUNC1(codec, pin) & AC_PINCTL_OUT_EN)
			continue;
		if (FUNC2(codec, pin)) {
			FUNC0(codec, 0, spec->am_entry[i].idx);
			return;
		}
	}
	FUNC0(codec, 0, spec->am_entry[0].idx);
}