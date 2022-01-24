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
typedef  int /*<<< orphan*/  u32 ;
struct hda_codec {int vendor_id; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int AC_PINCAP_HBR ; 
 int AC_PINCTL_EPT ; 
 int AC_PINCTL_EPT_HBR ; 
 int AC_PINCTL_EPT_NATIVE ; 
 int /*<<< orphan*/  AC_VERB_GET_PIN_WIDGET_CONTROL ; 
 int /*<<< orphan*/  AC_VERB_SET_PIN_WIDGET_CONTROL ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec, hda_nid_t cvt_nid,
			      hda_nid_t pin_nid, u32 stream_tag, int format)
{
	int pinctl;
	int new_pinctl = 0;

	if (codec->vendor_id == 0x80862807)
		FUNC0(codec, cvt_nid, pin_nid);

	if (FUNC5(codec, pin_nid) & AC_PINCAP_HBR) {
		pinctl = FUNC2(codec, pin_nid, 0,
					    AC_VERB_GET_PIN_WIDGET_CONTROL, 0);

		new_pinctl = pinctl & ~AC_PINCTL_EPT;
		if (FUNC1(format))
			new_pinctl |= AC_PINCTL_EPT_HBR;
		else
			new_pinctl |= AC_PINCTL_EPT_NATIVE;

		FUNC6("hdmi_setup_stream: "
			    "NID=0x%x, %spinctl=0x%x\n",
			    pin_nid,
			    pinctl == new_pinctl ? "" : "new-",
			    new_pinctl);

		if (pinctl != new_pinctl)
			FUNC4(codec, pin_nid, 0,
					    AC_VERB_SET_PIN_WIDGET_CONTROL,
					    new_pinctl);

	}
	if (FUNC1(format) && !new_pinctl) {
		FUNC6("hdmi_setup_stream: HBR is not supported\n");
		return -EINVAL;
	}

	FUNC3(codec, cvt_nid, stream_tag, 0, format);
	return 0;
}