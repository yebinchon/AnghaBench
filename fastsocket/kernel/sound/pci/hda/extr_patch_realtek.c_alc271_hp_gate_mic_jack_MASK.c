#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hda_fixup {int dummy; } ;
struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_4__ {int /*<<< orphan*/ * hp_pins; } ;
struct TYPE_6__ {TYPE_1__ autocfg; TYPE_2__* am_entry; } ;
struct alc_spec {TYPE_3__ gen; } ;
struct TYPE_5__ {int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int HDA_FIXUP_ACT_PROBE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
				    const struct hda_fixup *fix,
				    int action)
{
	struct alc_spec *spec = codec->spec;

	if (action == HDA_FIXUP_ACT_PROBE) {
		if (FUNC0(!spec->gen.am_entry[1].pin ||
			       !spec->gen.autocfg.hp_pins[0]))
			return;
		FUNC1(codec, spec->gen.am_entry[1].pin,
					     spec->gen.autocfg.hp_pins[0]);
	}
}