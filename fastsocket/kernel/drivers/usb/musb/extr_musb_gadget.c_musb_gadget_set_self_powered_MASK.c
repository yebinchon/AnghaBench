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
struct usb_gadget {int dummy; } ;
struct musb {int is_self_powered; } ;

/* Variables and functions */
 struct musb* FUNC0 (struct usb_gadget*) ; 

__attribute__((used)) static int
FUNC1(struct usb_gadget *gadget, int is_selfpowered)
{
	struct musb	*musb = FUNC0(gadget);

	musb->is_self_powered = !!is_selfpowered;
	return 0;
}