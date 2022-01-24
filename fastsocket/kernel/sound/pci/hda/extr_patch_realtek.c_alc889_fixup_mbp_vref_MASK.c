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
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int keep_vref_in_automute; } ;
struct alc_spec {TYPE_1__ gen; } ;
typedef  int hda_nid_t ;

/* Variables and functions */
 scalar_t__ AC_JACK_HP_OUT ; 
 unsigned int AC_PINCTL_VREF_80 ; 
 int FUNC0 (int*) ; 
 int HDA_FIXUP_ACT_INIT ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct hda_codec*,int) ; 
 unsigned int FUNC3 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec,
				  const struct hda_fixup *fix, int action)
{
	struct alc_spec *spec = codec->spec;
	static hda_nid_t nids[2] = { 0x14, 0x15 };
	int i;

	if (action != HDA_FIXUP_ACT_INIT)
		return;
	for (i = 0; i < FUNC0(nids); i++) {
		unsigned int val = FUNC3(codec, nids[i]);
		if (FUNC1(val) != AC_JACK_HP_OUT)
			continue;
		val = FUNC2(codec, nids[i]);
		val |= AC_PINCTL_VREF_80;
		FUNC4(codec, nids[i], val);
		spec->gen.keep_vref_in_automute = 1;
		break;
	}
}