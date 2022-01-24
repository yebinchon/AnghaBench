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
struct urb {scalar_t__ status; struct out_urb_context* context; } ;
struct snd_usb_midi_out_endpoint {int active_urbs; int drain_urbs; TYPE_1__* umidi; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  drain_wait; struct out_urb_context* urbs; } ;
struct out_urb_context {struct snd_usb_midi_out_endpoint* ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  error_timer; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ ERROR_DELAY_JIFFIES ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_midi_out_endpoint*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct urb* urb)
{
	struct out_urb_context *context = urb->context;
	struct snd_usb_midi_out_endpoint* ep = context->ep;
	unsigned int urb_index;

	FUNC3(&ep->buffer_lock);
	urb_index = context - ep->urbs;
	ep->active_urbs &= ~(1 << urb_index);
	if (FUNC5(ep->drain_urbs)) {
		ep->drain_urbs &= ~(1 << urb_index);
		FUNC6(&ep->drain_wait);
	}
	FUNC4(&ep->buffer_lock);
	if (urb->status < 0) {
		int err = FUNC2(urb->status);
		if (err < 0) {
			if (err != -ENODEV)
				FUNC0(&ep->umidi->error_timer,
					  jiffies + ERROR_DELAY_JIFFIES);
			return;
		}
	}
	FUNC1(ep);
}