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
struct usb_line6 {TYPE_1__* line6midi; } ;
struct urb {int status; int /*<<< orphan*/  transfer_buffer; scalar_t__ context; } ;
struct TYPE_2__ {int num_active_send_urbs; int /*<<< orphan*/  send_urb_lock; int /*<<< orphan*/  send_wait; int /*<<< orphan*/  substream_transmit; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	unsigned long flags;
	int status;
	int num;
	struct usb_line6 *line6 = (struct usb_line6 *)urb->context;

	status = urb->status;
	FUNC0(urb->transfer_buffer);
	FUNC4(urb);

	if (status == -ESHUTDOWN)
		return;

	FUNC2(&line6->line6midi->send_urb_lock, flags);
	num = --line6->line6midi->num_active_send_urbs;

	if (num == 0) {
		FUNC1(line6->line6midi->substream_transmit);
		num = line6->line6midi->num_active_send_urbs;
	}

	if (num == 0)
		FUNC5(&line6->line6midi->send_wait);

	FUNC3(&line6->line6midi->send_urb_lock, flags);
}