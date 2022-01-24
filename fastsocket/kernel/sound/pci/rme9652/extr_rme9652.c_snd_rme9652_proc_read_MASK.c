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
typedef  int u32 ;
struct snd_rme9652 {int thru_bits; int control_register; int hw_rev; int ss_channels; scalar_t__ passthru; scalar_t__ period_bytes; scalar_t__ iobase; int /*<<< orphan*/  port; int /*<<< orphan*/  irq; int /*<<< orphan*/  playback_buffer; int /*<<< orphan*/  capture_buffer; TYPE_1__* card; int /*<<< orphan*/  card_name; } ;
struct snd_info_entry {scalar_t__ private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int RME9652_ADAT1_INTERNAL ; 
 int RME9652_Dolby ; 
 int RME9652_EMP ; 
 int RME9652_Master ; 
 int RME9652_PRO ; 
#define  RME9652_SPDIFIN_COAXIAL 134 
#define  RME9652_SPDIFIN_INTERN 133 
#define  RME9652_SPDIFIN_OPTICAL 132 
#define  RME9652_SyncPref_ADAT1 131 
#define  RME9652_SyncPref_ADAT2 130 
#define  RME9652_SyncPref_ADAT3 129 
 int RME9652_SyncPref_Mask ; 
#define  RME9652_SyncPref_SPDIF 128 
 int RME9652_inp ; 
 int RME9652_latency ; 
 unsigned int RME9652_lock_0 ; 
 unsigned int RME9652_lock_1 ; 
 unsigned int RME9652_lock_2 ; 
 int RME9652_opt_out ; 
 int /*<<< orphan*/  RME9652_status_register ; 
 unsigned int RME9652_sync_0 ; 
 unsigned int RME9652_sync_1 ; 
 unsigned int RME9652_sync_2 ; 
 unsigned int RME9652_tc_valid ; 
 int RME9652_wsel ; 
 unsigned int RME9652_wsel_rd ; 
 int /*<<< orphan*/  FUNC0 (struct snd_rme9652*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_rme9652*) ; 
 unsigned int FUNC4 (struct snd_rme9652*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_info_buffer*,char*,...) ; 

__attribute__((used)) static void
FUNC7(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	struct snd_rme9652 *rme9652 = (struct snd_rme9652 *) entry->private_data;
	u32 thru_bits = rme9652->thru_bits;
	int show_auto_sync_source = 0;
	int i;
	unsigned int status;
	int x;

	status = FUNC4(rme9652, RME9652_status_register);

	FUNC6(buffer, "%s (Card #%d)\n", rme9652->card_name, rme9652->card->number + 1);
	FUNC6(buffer, "Buffers: capture %p playback %p\n",
		    rme9652->capture_buffer, rme9652->playback_buffer);
	FUNC6(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
		    rme9652->irq, rme9652->port, (unsigned long)rme9652->iobase);
	FUNC6(buffer, "Control register: %x\n", rme9652->control_register);

	FUNC6(buffer, "\n");

	x = 1 << (6 + FUNC1(rme9652->control_register & 
					     RME9652_latency));

	FUNC6(buffer, "Latency: %d samples (2 periods of %lu bytes)\n", 
		    x, (unsigned long) rme9652->period_bytes);
	FUNC6(buffer, "Hardware pointer (frames): %ld\n",
		    FUNC3(rme9652));
	FUNC6(buffer, "Passthru: %s\n",
		    rme9652->passthru ? "yes" : "no");

	if ((rme9652->control_register & (RME9652_Master | RME9652_wsel)) == 0) {
		FUNC6(buffer, "Clock mode: autosync\n");
		show_auto_sync_source = 1;
	} else if (rme9652->control_register & RME9652_wsel) {
		if (status & RME9652_wsel_rd) {
			FUNC6(buffer, "Clock mode: word clock\n");
		} else {
			FUNC6(buffer, "Clock mode: word clock (no signal)\n");
		}
	} else {
		FUNC6(buffer, "Clock mode: master\n");
	}

	if (show_auto_sync_source) {
		switch (rme9652->control_register & RME9652_SyncPref_Mask) {
		case RME9652_SyncPref_ADAT1:
			FUNC6(buffer, "Pref. sync source: ADAT1\n");
			break;
		case RME9652_SyncPref_ADAT2:
			FUNC6(buffer, "Pref. sync source: ADAT2\n");
			break;
		case RME9652_SyncPref_ADAT3:
			FUNC6(buffer, "Pref. sync source: ADAT3\n");
			break;
		case RME9652_SyncPref_SPDIF:
			FUNC6(buffer, "Pref. sync source: IEC958\n");
			break;
		default:
			FUNC6(buffer, "Pref. sync source: ???\n");
		}
	}

	if (rme9652->hw_rev >= 15)
		FUNC6(buffer, "\nADAT1 Input source: %s\n",
			    (rme9652->control_register & RME9652_ADAT1_INTERNAL) ?
			    "Internal" : "ADAT1 optical");

	FUNC6(buffer, "\n");

	switch (FUNC2(rme9652->control_register & 
					RME9652_inp)) {
	case RME9652_SPDIFIN_OPTICAL:
		FUNC6(buffer, "IEC958 input: ADAT1\n");
		break;
	case RME9652_SPDIFIN_COAXIAL:
		FUNC6(buffer, "IEC958 input: Coaxial\n");
		break;
	case RME9652_SPDIFIN_INTERN:
		FUNC6(buffer, "IEC958 input: Internal\n");
		break;
	default:
		FUNC6(buffer, "IEC958 input: ???\n");
		break;
	}

	if (rme9652->control_register & RME9652_opt_out) {
		FUNC6(buffer, "IEC958 output: Coaxial & ADAT1\n");
	} else {
		FUNC6(buffer, "IEC958 output: Coaxial only\n");
	}

	if (rme9652->control_register & RME9652_PRO) {
		FUNC6(buffer, "IEC958 quality: Professional\n");
	} else {
		FUNC6(buffer, "IEC958 quality: Consumer\n");
	}

	if (rme9652->control_register & RME9652_EMP) {
		FUNC6(buffer, "IEC958 emphasis: on\n");
	} else {
		FUNC6(buffer, "IEC958 emphasis: off\n");
	}

	if (rme9652->control_register & RME9652_Dolby) {
		FUNC6(buffer, "IEC958 Dolby: on\n");
	} else {
		FUNC6(buffer, "IEC958 Dolby: off\n");
	}

	i = FUNC5(rme9652);

	if (i < 0) {
		FUNC6(buffer,
			    "IEC958 sample rate: error flag set\n");
	} else if (i == 0) {
		FUNC6(buffer, "IEC958 sample rate: undetermined\n");
	} else {
		FUNC6(buffer, "IEC958 sample rate: %d\n", i);
	}

	FUNC6(buffer, "\n");

	FUNC6(buffer, "ADAT Sample rate: %dHz\n",
		    FUNC0(rme9652));

	/* Sync Check */

	x = status & RME9652_sync_0;
	if (status & RME9652_lock_0) {
		FUNC6(buffer, "ADAT1: %s\n", x ? "Sync" : "Lock");
	} else {
		FUNC6(buffer, "ADAT1: No Lock\n");
	}

	x = status & RME9652_sync_1;
	if (status & RME9652_lock_1) {
		FUNC6(buffer, "ADAT2: %s\n", x ? "Sync" : "Lock");
	} else {
		FUNC6(buffer, "ADAT2: No Lock\n");
	}

	x = status & RME9652_sync_2;
	if (status & RME9652_lock_2) {
		FUNC6(buffer, "ADAT3: %s\n", x ? "Sync" : "Lock");
	} else {
		FUNC6(buffer, "ADAT3: No Lock\n");
	}

	FUNC6(buffer, "\n");

	FUNC6(buffer, "Timecode signal: %s\n",
		    (status & RME9652_tc_valid) ? "yes" : "no");

	/* thru modes */

	FUNC6(buffer, "Punch Status:\n\n");

	for (i = 0; i < rme9652->ss_channels; i++) {
		if (thru_bits & (1 << i)) {
			FUNC6(buffer, "%2d:  on ", i + 1);
		} else {
			FUNC6(buffer, "%2d: off ", i + 1);
		}

		if (((i + 1) % 8) == 0) {
			FUNC6(buffer, "\n");
		}
	}

	FUNC6(buffer, "\n");
}