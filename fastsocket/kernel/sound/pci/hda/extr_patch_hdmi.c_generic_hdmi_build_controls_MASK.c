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
struct hdmi_spec_per_pin {int /*<<< orphan*/ * mux_nids; int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_PCM_TYPE_HDMI ; 
 int FUNC0 (struct hda_codec*,int) ; 
 TYPE_1__* FUNC1 (struct hdmi_spec*,int) ; 
 struct hdmi_spec_per_pin* FUNC2 (struct hdmi_spec*,int) ; 
 int FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_spec_per_pin*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hda_codec*,int) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	int err;
	int pin_idx;

	for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
		struct hdmi_spec_per_pin *per_pin = FUNC2(spec, pin_idx);

		err = FUNC0(codec, pin_idx);
		if (err < 0)
			return err;

		err = FUNC5(codec,
						  per_pin->pin_nid,
						  per_pin->mux_nids[0],
						  HDA_PCM_TYPE_HDMI);
		if (err < 0)
			return err;
		FUNC6(codec, pin_idx);

		/* add control for ELD Bytes */
		err = FUNC3(codec, pin_idx,
					  FUNC1(spec, pin_idx)->device);

		if (err < 0)
			return err;

		FUNC4(per_pin, 0);
	}

	return 0;
}