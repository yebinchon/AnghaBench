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
struct hdmi_spec_per_pin {int non_pcm; int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int num_pins; int /*<<< orphan*/  pins; } ;
struct hda_codec {int vendor_id; struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 scalar_t__ AC_JACK_PORT_NONE ; 
 unsigned int AC_PINCAP_DP ; 
 unsigned int AC_PINCAP_HDMI ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 struct hdmi_spec_per_pin* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec, hda_nid_t pin_nid)
{
	struct hdmi_spec *spec = codec->spec;
	unsigned int caps, config;
	int pin_idx;
	struct hdmi_spec_per_pin *per_pin;
	int err;

	caps = FUNC5(codec, pin_nid);
	if (!(caps & (AC_PINCAP_HDMI | AC_PINCAP_DP)))
		return 0;

	config = FUNC4(codec, pin_nid);
	if (FUNC0(config) == AC_JACK_PORT_NONE)
		return 0;

	if (codec->vendor_id == 0x80862807)
		FUNC2(codec, pin_nid);

	pin_idx = spec->num_pins;
	per_pin = FUNC3(&spec->pins);
	if (!per_pin)
		return -ENOMEM;

	per_pin->pin_nid = pin_nid;
	per_pin->non_pcm = false;

	err = FUNC1(codec, pin_idx);
	if (err < 0)
		return err;

	spec->num_pins++;

	return 0;
}