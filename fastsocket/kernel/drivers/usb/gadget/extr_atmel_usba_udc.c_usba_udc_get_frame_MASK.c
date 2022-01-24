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
struct usba_udc {int dummy; } ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FNUM ; 
 int /*<<< orphan*/  FRAME_NUMBER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usba_udc* FUNC1 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC2 (struct usba_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *gadget)
{
	struct usba_udc *udc = FUNC1(gadget);

	return FUNC0(FRAME_NUMBER, FUNC2(udc, FNUM));
}