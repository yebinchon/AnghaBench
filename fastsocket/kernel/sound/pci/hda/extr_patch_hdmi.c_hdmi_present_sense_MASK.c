#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct parsed_hdmi_eld {int dummy; } ;
struct hdmi_eld {int monitor_present; int eld_valid; scalar_t__ eld_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  info; int /*<<< orphan*/  eld_buffer; } ;
struct hdmi_spec_per_pin {TYPE_2__* eld_ctl; int /*<<< orphan*/  work; int /*<<< orphan*/  pin_nid; struct hdmi_eld sink_eld; struct hda_codec* codec; } ;
struct hdmi_spec {struct hdmi_eld temp_eld; } ;
struct hda_codec {TYPE_1__* bus; int /*<<< orphan*/  addr; struct hdmi_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  card; int /*<<< orphan*/  workq; } ;

/* Variables and functions */
 int AC_PINSENSE_ELDV ; 
 int AC_PINSENSE_PRESENCE ; 
 int SNDRV_CTL_EVENT_MASK_INFO ; 
 int SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  SND_PR_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct hdmi_spec_per_pin *per_pin, int repoll)
{
	struct hda_codec *codec = per_pin->codec;
	struct hdmi_spec *spec = codec->spec;
	struct hdmi_eld *eld = &spec->temp_eld;
	struct hdmi_eld *pin_eld = &per_pin->sink_eld;
	hda_nid_t pin_nid = per_pin->pin_nid;
	/*
	 * Always execute a GetPinSense verb here, even when called from
	 * hdmi_intrinsic_event; for some NVIDIA HW, the unsolicited
	 * response's PD bit is not the real PD value, but indicates that
	 * the real PD value changed. An older version of the HD-audio
	 * specification worked this way. Hence, we just ignore the data in
	 * the unsolicited response to avoid custom WARs.
	 */
	int present = FUNC9(codec, pin_nid);
	bool update_eld = false;
	bool eld_changed = false;

	pin_eld->monitor_present = !!(present & AC_PINSENSE_PRESENCE);
	if (pin_eld->monitor_present)
		eld->eld_valid  = !!(present & AC_PINSENSE_ELDV);
	else
		eld->eld_valid = false;

	FUNC0(SND_PR_VERBOSE,
		"HDMI status: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\n",
		codec->addr, pin_nid, pin_eld->monitor_present, eld->eld_valid);

	if (eld->eld_valid) {
		if (FUNC10(codec, pin_nid, eld->eld_buffer,
						     &eld->eld_size) < 0)
			eld->eld_valid = false;
		else {
			FUNC3(&eld->info, 0, sizeof(struct parsed_hdmi_eld));
			if (FUNC11(&eld->info, eld->eld_buffer,
						    eld->eld_size) < 0)
				eld->eld_valid = false;
		}

		if (eld->eld_valid) {
			FUNC12(&eld->info);
			update_eld = true;
		}
		else if (repoll) {
			FUNC7(codec->bus->workq,
					   &per_pin->work,
					   FUNC4(300));
			return;
		}
	}

	FUNC5(&pin_eld->lock);
	if (pin_eld->eld_valid && !eld->eld_valid) {
		update_eld = true;
		eld_changed = true;
	}
	if (update_eld) {
		pin_eld->eld_valid = eld->eld_valid;
		eld_changed = pin_eld->eld_size != eld->eld_size ||
			      FUNC1(pin_eld->eld_buffer, eld->eld_buffer,
				     eld->eld_size) != 0;
		if (eld_changed)
			FUNC2(pin_eld->eld_buffer, eld->eld_buffer,
			       eld->eld_size);
		pin_eld->eld_size = eld->eld_size;
		pin_eld->info = eld->info;
	}
	FUNC6(&pin_eld->lock);

	if (eld_changed)
		FUNC8(codec->bus->card,
			       SNDRV_CTL_EVENT_MASK_VALUE | SNDRV_CTL_EVENT_MASK_INFO,
			       &per_pin->eld_ctl->id);
}