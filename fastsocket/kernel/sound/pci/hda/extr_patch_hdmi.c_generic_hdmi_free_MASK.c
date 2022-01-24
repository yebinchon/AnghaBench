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
struct hdmi_eld {int dummy; } ;
struct hdmi_spec_per_pin {int /*<<< orphan*/  work; struct hdmi_eld sink_eld; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {TYPE_1__* bus; struct hdmi_spec* spec; } ;
struct TYPE_2__ {int /*<<< orphan*/  workq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hdmi_spec_per_pin* FUNC2 (struct hdmi_spec*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hdmi_spec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdmi_spec*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,struct hdmi_eld*) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec)
{
	struct hdmi_spec *spec = codec->spec;
	int pin_idx;

	for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
		struct hdmi_spec_per_pin *per_pin = FUNC2(spec, pin_idx);
		struct hdmi_eld *eld = &per_pin->sink_eld;

		FUNC0(&per_pin->work);
		FUNC5(codec, eld);
	}

	FUNC1(codec->bus->workq);
	FUNC3(spec);
	FUNC4(spec);
}