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
struct hdmi_spec_per_pin {int /*<<< orphan*/  pin_nid; } ;
struct hdmi_spec {int dummy; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hdmi_str ;
struct TYPE_2__ {int device; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct hdmi_spec*,int) ; 
 struct hdmi_spec_per_pin* FUNC1 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec, int pin_idx)
{
	char hdmi_str[32] = "HDMI/DP";
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_spec_per_pin *per_pin = FUNC1(spec, pin_idx);
	int pcmdev = FUNC0(spec, pin_idx)->device;

	if (pcmdev > 0)
		FUNC4(hdmi_str + FUNC5(hdmi_str), ",pcm=%d", pcmdev);
	if (!FUNC2(codec, per_pin->pin_nid))
		FUNC6(hdmi_str, " Phantom",
			sizeof(hdmi_str) - FUNC5(hdmi_str) - 1);

	return FUNC3(codec, per_pin->pin_nid, hdmi_str, 0);
}