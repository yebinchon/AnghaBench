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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_PINCTL_IN_EN ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct hda_codec *codec, int num_pins, hda_nid_t *pins)
{
	int i, present = 0;

	for (i = 0; i < num_pins; i++) {
		hda_nid_t nid = pins[i];
		if (!nid)
			break;
		/* don't detect pins retasked as inputs */
		if (FUNC0(codec, nid) & AC_PINCTL_IN_EN)
			continue;
		present |= FUNC1(codec, nid);
	}
	return present;
}