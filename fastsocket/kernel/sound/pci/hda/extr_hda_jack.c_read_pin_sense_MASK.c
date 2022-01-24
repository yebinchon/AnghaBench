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
typedef  int u32 ;
struct hda_codec {scalar_t__ inv_jack_detect; int /*<<< orphan*/  no_trigger_sense; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_PINCAP_TRIG_REQ ; 
 int AC_PINSENSE_PRESENCE ; 
 int /*<<< orphan*/  AC_VERB_GET_PIN_SENSE ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_SENSE ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct hda_codec *codec, hda_nid_t nid)
{
	u32 pincap;
	u32 val;

	if (!codec->no_trigger_sense) {
		pincap = FUNC1(codec, nid);
		if (pincap & AC_PINCAP_TRIG_REQ) /* need trigger? */
			FUNC0(codec, nid, 0,
					AC_VERB_SET_PIN_SENSE, 0);
	}
	val = FUNC0(codec, nid, 0,
				  AC_VERB_GET_PIN_SENSE, 0);
	if (codec->inv_jack_detect)
		val ^= AC_PINSENSE_PRESENCE;
	return val;
}