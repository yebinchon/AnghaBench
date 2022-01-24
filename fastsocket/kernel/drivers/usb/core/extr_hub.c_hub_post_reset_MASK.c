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
struct usb_interface {int dummy; } ;
struct usb_hub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUB_POST_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 struct usb_hub* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf)
{
	struct usb_hub *hub = FUNC1(intf);

	FUNC0(hub, HUB_POST_RESET);
	return 0;
}