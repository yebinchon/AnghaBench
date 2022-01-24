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
 unsigned int AC_PWRST_D0 ; 
 int /*<<< orphan*/  AC_VERB_SET_POWER_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec, hda_nid_t fg,
				unsigned int power_state)
{
	if (power_state == AC_PWRST_D0) {
		FUNC0(codec, false);
		FUNC1(codec);
	}

	FUNC2(codec, fg, 0, AC_VERB_SET_POWER_STATE, power_state);
	FUNC3(codec, fg, power_state);
}