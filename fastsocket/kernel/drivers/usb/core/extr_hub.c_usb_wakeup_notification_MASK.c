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
struct usb_hub {int /*<<< orphan*/  wakeup_bits; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 struct usb_hub* FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC3(struct usb_device *hdev,
		unsigned int portnum)
{
	struct usb_hub *hub;

	if (!hdev)
		return;

	hub = FUNC0(hdev);
	if (hub) {
		FUNC2(portnum, hub->wakeup_bits);
		FUNC1(hub);
	}
}