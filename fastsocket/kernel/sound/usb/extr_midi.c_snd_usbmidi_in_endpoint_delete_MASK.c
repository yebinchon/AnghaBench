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
struct snd_usb_midi_in_endpoint {TYPE_1__** urbs; int /*<<< orphan*/  umidi; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_buffer_length; } ;

/* Variables and functions */
 unsigned int INPUT_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_midi_in_endpoint*) ; 

__attribute__((used)) static void FUNC2(struct snd_usb_midi_in_endpoint* ep)
{
	unsigned int i;

	for (i = 0; i < INPUT_URBS; ++i)
		if (ep->urbs[i])
			FUNC0(ep->umidi, ep->urbs[i],
					    ep->urbs[i]->transfer_buffer_length);
	FUNC1(ep);
}