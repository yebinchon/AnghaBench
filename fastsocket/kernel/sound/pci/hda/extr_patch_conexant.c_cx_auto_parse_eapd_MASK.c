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
struct hda_codec {scalar_t__ start_nid; scalar_t__ num_nodes; struct conexant_spec* spec; } ;
struct conexant_spec {int num_eapds; int dynamic_eapd; scalar_t__* eapds; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int AC_PINCAP_EAPD ; 
 scalar_t__ AC_WID_PIN ; 
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	struct conexant_spec *spec = codec->spec;
	hda_nid_t nid, end_nid;

	end_nid = codec->start_nid + codec->num_nodes;
	for (nid = codec->start_nid; nid < end_nid; nid++) {
		if (FUNC2(FUNC1(codec, nid)) != AC_WID_PIN)
			continue;
		if (!(FUNC3(codec, nid) & AC_PINCAP_EAPD))
			continue;
		spec->eapds[spec->num_eapds++] = nid;
		if (spec->num_eapds >= FUNC0(spec->eapds))
			break;
	}

	/* NOTE: below is a wild guess; if we have more than two EAPDs,
	 * it's a new chip, where EAPDs are supposed to be associated to
	 * pins, and we can control EAPD per pin.
	 * OTOH, if only one or two EAPDs are found, it's an old chip,
	 * thus it might control over all pins.
	 */
	if (spec->num_eapds > 2)
		spec->dynamic_eapd = 1;
}