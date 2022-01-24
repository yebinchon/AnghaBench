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
struct usbmidi_out_port {struct snd_usb_midi_out_endpoint* ep; } ;
struct snd_usb_midi_out_endpoint {unsigned int active_urbs; unsigned int drain_urbs; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  drain_wait; TYPE_2__* umidi; } ;
struct snd_rawmidi_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {scalar_t__ disconnected; } ;
struct TYPE_3__ {struct usbmidi_out_port* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(struct snd_rawmidi_substream *substream)
{
	struct usbmidi_out_port* port = substream->runtime->private_data;
	struct snd_usb_midi_out_endpoint *ep = port->ep;
	unsigned int drain_urbs;
	FUNC0(wait);
	long timeout = FUNC2(50);

	if (ep->umidi->disconnected)
		return;
	/*
	 * The substream buffer is empty, but some data might still be in the
	 * currently active URBs, so we have to wait for those to complete.
	 */
	FUNC5(&ep->buffer_lock);
	drain_urbs = ep->active_urbs;
	if (drain_urbs) {
		ep->drain_urbs |= drain_urbs;
		do {
			FUNC3(&ep->drain_wait, &wait,
					TASK_UNINTERRUPTIBLE);
			FUNC6(&ep->buffer_lock);
			timeout = FUNC4(timeout);
			FUNC5(&ep->buffer_lock);
			drain_urbs &= ep->drain_urbs;
		} while (drain_urbs && timeout);
		FUNC1(&ep->drain_wait, &wait);
	}
	FUNC6(&ep->buffer_lock);
}