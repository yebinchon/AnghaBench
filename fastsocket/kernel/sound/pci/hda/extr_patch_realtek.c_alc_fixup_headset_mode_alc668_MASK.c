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
 int HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct hda_fixup const*,int) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec,
				const struct hda_fixup *fix, int action)
{
	if (action == HDA_FIXUP_ACT_PRE_PROBE) {
		int val;
		FUNC2(codec, 0xc4, 0x8000);
		val = FUNC1(codec, 0xc2);
		FUNC2(codec, 0xc2, val & 0xfe);
		FUNC3(codec, 0x18, 0);
	}
	FUNC0(codec, fix, action);
}