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
 unsigned int AC_PWRST_ERROR ; 
 int /*<<< orphan*/  AC_VERB_GET_POWER_STATE ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(struct hda_codec *codec,
					 hda_nid_t fg,
					 unsigned int power_state)
{
	unsigned long end_time = jiffies + FUNC0(500);
	unsigned int state, actual_state;

	for (;;) {
		state = FUNC2(codec, fg, 0,
					   AC_VERB_GET_POWER_STATE, 0);
		if (state & AC_PWRST_ERROR)
			break;
		actual_state = (state >> 4) & 0x0f;
		if (actual_state == power_state)
			break;
		if (FUNC3(jiffies, end_time))
			break;
		/* wait until the codec reachs to the target state */
		FUNC1(1);
	}
	return state;
}