#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sigmatel_spec {unsigned int num_pwrs; scalar_t__* pwr_nids; unsigned int power_map_bits; } ;
struct hda_codec {int /*<<< orphan*/  afg; struct sigmatel_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_IDT_SET_POWER_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct hda_codec *codec, hda_nid_t nid,
				  bool enable, bool do_write)
{
	struct sigmatel_spec *spec = codec->spec;
	unsigned int idx, val;

	for (idx = 0; idx < spec->num_pwrs; idx++) {
		if (spec->pwr_nids[idx] == nid)
			break;
	}
	if (idx >= spec->num_pwrs)
		return;

	idx = 1 << idx;

	val = spec->power_map_bits;
	if (enable)
		val &= ~idx;
	else
		val |= idx;

	/* power down unused output ports */
	if (val != spec->power_map_bits) {
		spec->power_map_bits = val;
		if (do_write)
			FUNC0(codec, codec->afg, 0,
					    AC_VERB_IDT_SET_POWER_MAP, val);
	}
}