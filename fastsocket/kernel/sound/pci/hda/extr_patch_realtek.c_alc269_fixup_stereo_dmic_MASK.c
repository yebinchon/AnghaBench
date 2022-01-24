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
struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int HDA_FIXUP_ACT_INIT ; 
 int FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
				     const struct hda_fixup *fix, int action)
{
	int coef;

	if (action != HDA_FIXUP_ACT_INIT)
		return;
	/* The digital-mic unit sends PDM (differential signal) instead of
	 * the standard PCM, thus you can't record a valid mono stream as is.
	 * Below is a workaround specific to ALC269 to control the dmic
	 * signal source as mono.
	 */
	coef = FUNC0(codec, 0x07);
	FUNC1(codec, 0x07, coef | 0x80);
}