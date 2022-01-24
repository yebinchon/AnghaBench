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
struct pxa_udc {scalar_t__ transceiver; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (scalar_t__,unsigned int) ; 
 struct pxa_udc* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *_gadget, unsigned mA)
{
	struct pxa_udc *udc;

	udc = FUNC1(_gadget);
	if (udc->transceiver)
		return FUNC0(udc->transceiver, mA);
	return -EOPNOTSUPP;
}