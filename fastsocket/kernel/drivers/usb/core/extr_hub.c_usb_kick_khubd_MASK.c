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
struct usb_hub {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 struct usb_hub* FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*) ; 

void FUNC2(struct usb_device *hdev)
{
	struct usb_hub *hub = FUNC0(hdev);

	if (hub)
		FUNC1(hub);
}