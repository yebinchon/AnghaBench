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
struct hda_codec {struct hda_beep* beep; } ;
struct hda_beep {int enabled; scalar_t__ mode; int /*<<< orphan*/  unregister_work; int /*<<< orphan*/  register_work; } ;

/* Variables and functions */
 scalar_t__ HDA_BEEP_MODE_SWREG ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_beep*) ; 

int FUNC4(struct hda_codec *codec, int enable)
{
	struct hda_beep *beep = codec->beep;
	if (!beep)
		return 0;
	enable = !!enable;
	if (beep->enabled != enable) {
		beep->enabled = enable;
		if (!enable)
			FUNC3(beep);
		if (beep->mode == HDA_BEEP_MODE_SWREG) {
			if (enable) {
				FUNC0(&beep->unregister_work);
				FUNC2(&beep->register_work);
			} else {
				FUNC1(&beep->unregister_work,
									   HZ);
			}
		}
		return 1;
	}
	return 0;
}