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
struct urb {scalar_t__ actual_length; struct sisusb_urb_context* context; } ;
struct sisusb_usb_data {int /*<<< orphan*/  wait_q; int /*<<< orphan*/ * urbstatus; int /*<<< orphan*/  present; int /*<<< orphan*/  sisusb_dev; } ;
struct sisusb_urb_context {size_t urbindex; int /*<<< orphan*/ * actual_length; struct sisusb_usb_data* sisusb; } ;

/* Variables and functions */
 int /*<<< orphan*/  SU_URB_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct urb *urb)
{
	struct sisusb_urb_context *context = urb->context;
	struct sisusb_usb_data *sisusb;

	if (!context)
		return;

	sisusb = context->sisusb;

	if (!sisusb || !sisusb->sisusb_dev || !sisusb->present)
		return;

#ifndef SISUSB_DONTSYNC
	if (context->actual_length)
		*(context->actual_length) += urb->actual_length;
#endif

	sisusb->urbstatus[context->urbindex] &= ~SU_URB_BUSY;
	FUNC0(&sisusb->wait_q);
}