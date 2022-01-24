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
struct ld_usb {struct ld_usb* interrupt_out_buffer; struct ld_usb* interrupt_in_buffer; struct ld_usb* ring_buffer; int /*<<< orphan*/  interrupt_out_urb; int /*<<< orphan*/  interrupt_in_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ld_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ld_usb *dev)
{
	FUNC1(dev);

	/* free data structures */
	FUNC2(dev->interrupt_in_urb);
	FUNC2(dev->interrupt_out_urb);
	FUNC0(dev->ring_buffer);
	FUNC0(dev->interrupt_in_buffer);
	FUNC0(dev->interrupt_out_buffer);
	FUNC0(dev);
}