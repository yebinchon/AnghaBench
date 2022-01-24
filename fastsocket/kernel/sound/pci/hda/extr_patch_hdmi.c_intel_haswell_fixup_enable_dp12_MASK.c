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

/* Variables and functions */
 unsigned int INTEL_EN_DP12 ; 
 int /*<<< orphan*/  INTEL_GET_VENDOR_VERB ; 
 int /*<<< orphan*/  INTEL_SET_VENDOR_VERB ; 
 int /*<<< orphan*/  INTEL_VENDOR_NID ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct hda_codec *codec)
{
	unsigned int vendor_param;

	vendor_param = FUNC0(codec, INTEL_VENDOR_NID, 0,
				INTEL_GET_VENDOR_VERB, 0);
	if (vendor_param == -1 || vendor_param & INTEL_EN_DP12)
		return;

	/* enable DP1.2 mode */
	vendor_param |= INTEL_EN_DP12;
	FUNC1(codec, INTEL_VENDOR_NID, 0,
				INTEL_SET_VENDOR_VERB, vendor_param);
}