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

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_gadget*) ; 
 scalar_t__ FUNC1 (struct usb_gadget*) ; 
 scalar_t__ FUNC2 (struct usb_gadget*) ; 

__attribute__((used)) static inline bool FUNC3(struct usb_gadget *gadget)
{
	/* PXA 21x/25x/26x has no altsettings at all */
	if (FUNC0(gadget))
		return false;

	/* PXA 27x and 3xx have *broken* altsetting support */
	if (FUNC1(gadget))
		return false;

	/* SH3 hardware just doesn't do altsettings */
	if (FUNC2(gadget))
		return false;

	/* Everything else is *presumably* fine ... */
	return true;
}