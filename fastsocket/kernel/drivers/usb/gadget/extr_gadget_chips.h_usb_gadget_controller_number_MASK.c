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
 int ENOENT ; 
 scalar_t__ FUNC0 (struct usb_gadget*) ; 
 scalar_t__ FUNC1 (struct usb_gadget*) ; 
 scalar_t__ FUNC2 (struct usb_gadget*) ; 
 scalar_t__ FUNC3 (struct usb_gadget*) ; 
 scalar_t__ FUNC4 (struct usb_gadget*) ; 
 scalar_t__ FUNC5 (struct usb_gadget*) ; 
 scalar_t__ FUNC6 (struct usb_gadget*) ; 
 scalar_t__ FUNC7 (struct usb_gadget*) ; 
 scalar_t__ FUNC8 (struct usb_gadget*) ; 
 scalar_t__ FUNC9 (struct usb_gadget*) ; 
 scalar_t__ FUNC10 (struct usb_gadget*) ; 
 scalar_t__ FUNC11 (struct usb_gadget*) ; 
 scalar_t__ FUNC12 (struct usb_gadget*) ; 
 scalar_t__ FUNC13 (struct usb_gadget*) ; 
 scalar_t__ FUNC14 (struct usb_gadget*) ; 
 scalar_t__ FUNC15 (struct usb_gadget*) ; 
 scalar_t__ FUNC16 (struct usb_gadget*) ; 
 scalar_t__ FUNC17 (struct usb_gadget*) ; 
 scalar_t__ FUNC18 (struct usb_gadget*) ; 
 scalar_t__ FUNC19 (struct usb_gadget*) ; 
 scalar_t__ FUNC20 (struct usb_gadget*) ; 
 scalar_t__ FUNC21 (struct usb_gadget*) ; 
 scalar_t__ FUNC22 (struct usb_gadget*) ; 
 scalar_t__ FUNC23 (struct usb_gadget*) ; 
 scalar_t__ FUNC24 (struct usb_gadget*) ; 

__attribute__((used)) static inline int FUNC25(struct usb_gadget *gadget)
{
	if (FUNC17(gadget))
		return 0x01;
	else if (FUNC4(gadget))
		return 0x02;
	else if (FUNC19(gadget))
		return 0x03;
	else if (FUNC24(gadget))
		return 0x04;
	else if (FUNC23(gadget))
		return 0x05;
	else if (FUNC7(gadget))
		return 0x06;
	else if (FUNC13(gadget))
		return 0x07;
	else if (FUNC18(gadget))
		return 0x08;
	else if (FUNC10(gadget))
		return 0x09;
	else if (FUNC16(gadget))
		return 0x10;
	else if (FUNC20(gadget))
		return 0x11;
	else if (FUNC22(gadget))
		return 0x12;
	else if (FUNC1(gadget))
		return 0x13;
	else if (FUNC8(gadget))
		return 0x14;
	else if (FUNC15(gadget))
		return 0x15;
	else if (FUNC14(gadget))
		return 0x16;
	else if (FUNC12(gadget))
		return 0x17;
	else if (FUNC2(gadget))
		return 0x18;
	else if (FUNC6(gadget))
		return 0x19;
	else if (FUNC0(gadget))
		return 0x20;
	else if (FUNC11(gadget))
		return 0x21;
	else if (FUNC5(gadget))
		return 0x22;
	else if (FUNC3(gadget))
		return 0x23;
	else if (FUNC9(gadget))
		return 0x24;
	else if (FUNC21(gadget))
		return 0x25;
	return -ENOENT;
}