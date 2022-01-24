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
struct hda_pincfg {int /*<<< orphan*/  nid; } ;
struct TYPE_2__ {int used; } ;
struct hda_codec {TYPE_1__ init_pins; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_UNSOLICITED_ENABLE ; 
 scalar_t__ FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 struct hda_pincfg* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	int i;

	for (i = 0; i < codec->init_pins.used; i++) {
		struct hda_pincfg *pin = FUNC1(&codec->init_pins, i);
		hda_nid_t nid = pin->nid;
		if (FUNC0(codec, nid) &&
		    !FUNC3(codec, nid))
			FUNC2(codec, nid, 0,
					AC_VERB_SET_UNSOLICITED_ENABLE, 0);
	}
}