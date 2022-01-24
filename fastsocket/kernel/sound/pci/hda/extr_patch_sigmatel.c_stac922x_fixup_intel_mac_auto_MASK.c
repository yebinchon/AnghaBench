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
struct hda_codec {scalar_t__ fixup_id; } ;

/* Variables and functions */
 int HDA_FIXUP_ACT_PRE_PROBE ; 
 scalar_t__ STAC_INTEL_MAC_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stac922x_fixups ; 
 int /*<<< orphan*/  stac922x_intel_mac_fixup_tbl ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec,
					  const struct hda_fixup *fix,
					  int action)
{
	if (action != HDA_FIXUP_ACT_PRE_PROBE)
		return;
	FUNC1(codec, NULL, stac922x_intel_mac_fixup_tbl,
			   stac922x_fixups);
	if (codec->fixup_id != STAC_INTEL_MAC_AUTO)
		FUNC0(codec, action);
}