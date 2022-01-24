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
struct usb_alphatrack {struct usb_alphatrack* interrupt_out_buffer; struct usb_alphatrack* interrupt_in_buffer; struct usb_alphatrack* ring_buffer; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_alphatrack*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_alphatrack*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usb_alphatrack *dev)
{
	FUNC1(dev);
	FUNC2(dev->interrupt_in_urb);
	FUNC2(dev->interrupt_out_urb);
	FUNC0(dev->ring_buffer);
	FUNC0(dev->interrupt_in_buffer);
	FUNC0(dev->interrupt_out_buffer);
	FUNC0(dev);		/* fixme oldi_buffer */
}