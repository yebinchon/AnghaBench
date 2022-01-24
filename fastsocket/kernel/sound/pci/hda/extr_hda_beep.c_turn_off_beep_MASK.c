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
struct hda_beep {int /*<<< orphan*/  codec; scalar_t__ playing; int /*<<< orphan*/  nid; int /*<<< orphan*/  beep_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_BEEP_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_beep *beep)
{
	FUNC0(&beep->beep_work);
	if (beep->playing) {
		/* turn off beep */
		FUNC1(beep->codec, beep->nid, 0,
				    AC_VERB_SET_BEEP_CONTROL, 0);
		beep->playing = 0;
		FUNC2(beep->codec);
	}
}