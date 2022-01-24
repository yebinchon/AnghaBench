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
struct pxa_udc {int dummy; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int /*<<< orphan*/  UDCCR ; 
 int UDCCR_DWRE ; 
 int /*<<< orphan*/  UDCCR_UDR ; 
 struct pxa_udc* FUNC0 (struct usb_gadget*) ; 
 int FUNC1 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *_gadget)
{
	struct pxa_udc *udc = FUNC0(_gadget);

	/* host may not have enabled remote wakeup */
	if ((FUNC1(udc, UDCCR) & UDCCR_DWRE) == 0)
		return -EHOSTUNREACH;
	FUNC2(udc, UDCCR_UDR);
	return 0;
}