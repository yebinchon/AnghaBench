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
struct hda_pincfg {void* ctrl; void* cfg; scalar_t__ nid; } ;
struct hda_codec {int num_nodes; int /*<<< orphan*/  init_pins; scalar_t__ start_nid; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_CONFIG_DEFAULT ; 
 int /*<<< orphan*/  AC_VERB_GET_PIN_WIDGET_CONTROL ; 
 unsigned int AC_WID_PIN ; 
 int ENOMEM ; 
 unsigned int FUNC0 (struct hda_codec*,scalar_t__) ; 
 unsigned int FUNC1 (unsigned int) ; 
 struct hda_pincfg* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	int i;
	hda_nid_t nid = codec->start_nid;

	for (i = 0; i < codec->num_nodes; i++, nid++) {
		struct hda_pincfg *pin;
		unsigned int wcaps = FUNC0(codec, nid);
		unsigned int wid_type = FUNC1(wcaps);
		if (wid_type != AC_WID_PIN)
			continue;
		pin = FUNC2(&codec->init_pins);
		if (!pin)
			return -ENOMEM;
		pin->nid = nid;
		pin->cfg = FUNC3(codec, nid, 0,
					      AC_VERB_GET_CONFIG_DEFAULT, 0);
		pin->ctrl = FUNC3(codec, nid, 0,
					       AC_VERB_GET_PIN_WIDGET_CONTROL,
					       0);
	}
	return 0;
}