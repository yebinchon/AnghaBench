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
struct snd_usb_midi_in_endpoint {TYPE_2__** urbs; scalar_t__ error_resubmit; } ;
struct snd_usb_midi {int /*<<< orphan*/  disc_lock; TYPE_1__* endpoints; int /*<<< orphan*/  dev; scalar_t__ disconnected; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ out; struct snd_usb_midi_in_endpoint* in; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int INPUT_URBS ; 
 unsigned int MIDI_MAX_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct snd_usb_midi *umidi = (struct snd_usb_midi *)data;
	unsigned int i, j;

	FUNC2(&umidi->disc_lock);
	if (umidi->disconnected) {
		FUNC3(&umidi->disc_lock);
		return;
	}
	for (i = 0; i < MIDI_MAX_ENDPOINTS; ++i) {
		struct snd_usb_midi_in_endpoint *in = umidi->endpoints[i].in;
		if (in && in->error_resubmit) {
			in->error_resubmit = 0;
			for (j = 0; j < INPUT_URBS; ++j) {
				in->urbs[j]->dev = umidi->dev;
				FUNC1(in->urbs[j], GFP_ATOMIC);
			}
		}
		if (umidi->endpoints[i].out)
			FUNC0(umidi->endpoints[i].out);
	}
	FUNC3(&umidi->disc_lock);
}