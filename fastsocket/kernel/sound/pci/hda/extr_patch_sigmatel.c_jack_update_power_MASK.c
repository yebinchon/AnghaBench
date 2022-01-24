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
struct sigmatel_spec {int num_pwrs; int /*<<< orphan*/  power_map_bits; scalar_t__* pwr_nids; } ;
struct hda_jack_tbl {scalar_t__ action; scalar_t__ nid; } ;
struct hda_codec {int /*<<< orphan*/  afg; struct sigmatel_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_IDT_SET_POWER_MAP ; 
 scalar_t__ HDA_GEN_LAST_EVENT ; 
 scalar_t__ STAC_PWR_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__) ; 
 struct hda_jack_tbl* FUNC2 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
			      struct hda_jack_tbl *jack)
{
	struct sigmatel_spec *spec = codec->spec;
	int i;

	if (!spec->num_pwrs)
		return;

	if (jack && jack->nid) {
		FUNC3(codec, jack->nid,
				      FUNC1(codec, jack->nid),
				      true);
		return;
	}

	/* update all jacks */
	for (i = 0; i < spec->num_pwrs; i++) {
		hda_nid_t nid = spec->pwr_nids[i];
		jack = FUNC2(codec, nid);
		if (!jack || !jack->action)
			continue;
		if (jack->action == STAC_PWR_EVENT ||
		    jack->action <= HDA_GEN_LAST_EVENT)
			FUNC3(codec, nid,
					      FUNC1(codec, nid),
					      false);
	}

	FUNC0(codec, codec->afg, 0, AC_VERB_IDT_SET_POWER_MAP,
			    spec->power_map_bits);
}