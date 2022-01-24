#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hdmi_spec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  set_power_state; } ;
struct hda_codec {int vendor_id; TYPE_1__ patch_ops; struct hdmi_spec* spec; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 TYPE_1__ generic_hdmi_patch_ops ; 
 int /*<<< orphan*/  haswell_set_power_state ; 
 int /*<<< orphan*/  FUNC1 (struct hdmi_spec*,int) ; 
 scalar_t__ FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC6 (struct hdmi_spec*) ; 
 struct hdmi_spec* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hda_codec *codec)
{
	struct hdmi_spec *spec;

	spec = FUNC7(sizeof(*spec), GFP_KERNEL);
	if (spec == NULL)
		return -ENOMEM;

	codec->spec = spec;
	FUNC1(spec, 4);

	if (codec->vendor_id == 0x80862807) {
		FUNC4(codec, true);
		FUNC5(codec);
	}

	if (FUNC2(codec) < 0) {
		codec->spec = NULL;
		FUNC6(spec);
		return -EINVAL;
	}
	codec->patch_ops = generic_hdmi_patch_ops;
	if (codec->vendor_id == 0x80862807)
		codec->patch_ops.set_power_state = haswell_set_power_state;

	FUNC0(codec);

	FUNC3();

	return 0;
}