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
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_AMP_GAIN_MUTE ; 
 int AC_WCAP_OUT_AMP ; 
 int /*<<< orphan*/  AMP_OUT_UNMUTE ; 
 int /*<<< orphan*/  AMP_OUT_ZERO ; 
 int /*<<< orphan*/  PIN_HP ; 
 int FUNC0 (struct hda_codec*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, hda_nid_t pin, hda_nid_t dac)
{
	if (pin) {
		FUNC2(codec, pin, PIN_HP);
		if (FUNC0(codec, pin) & AC_WCAP_OUT_AMP)
			FUNC1(codec, pin, 0,
					    AC_VERB_SET_AMP_GAIN_MUTE,
					    AMP_OUT_UNMUTE);
	}
	if (dac && (FUNC0(codec, dac) & AC_WCAP_OUT_AMP))
		FUNC1(codec, dac, 0,
				    AC_VERB_SET_AMP_GAIN_MUTE, AMP_OUT_ZERO);
}