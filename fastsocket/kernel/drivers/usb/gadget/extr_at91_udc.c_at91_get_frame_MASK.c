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
struct at91_udc {int /*<<< orphan*/  clocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_UDP_FRM_NUM ; 
 int AT91_UDP_NUM ; 
 int EINVAL ; 
 int FUNC0 (struct at91_udc*,int /*<<< orphan*/ ) ; 
 struct at91_udc* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *gadget)
{
	struct at91_udc *udc = FUNC1(gadget);

	if (!FUNC1(gadget)->clocked)
		return -EINVAL;
	return FUNC0(udc, AT91_UDP_FRM_NUM) & AT91_UDP_NUM;
}