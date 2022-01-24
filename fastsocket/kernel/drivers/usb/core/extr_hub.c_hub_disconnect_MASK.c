#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_hub {int disconnected; int /*<<< orphan*/  kref; int /*<<< orphan*/  buffer; int /*<<< orphan*/  status; int /*<<< orphan*/  descriptor; int /*<<< orphan*/  port_owners; int /*<<< orphan*/  urb; TYPE_1__* hdev; scalar_t__ error; int /*<<< orphan*/  event_list; } ;
struct TYPE_2__ {scalar_t__ speed; scalar_t__ maxchild; } ;

/* Variables and functions */
 int /*<<< orphan*/  HUB_DISCONNECT ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  highspeed_hubs ; 
 int /*<<< orphan*/  hub_event_lock ; 
 int /*<<< orphan*/  FUNC0 (struct usb_hub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hub_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct usb_hub* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct usb_hub *hub = FUNC7 (intf);

	/* Take the hub off the event list and don't let it be added again */
	FUNC4(&hub_event_lock);
	FUNC3(&hub->event_list);
	hub->disconnected = 1;
	FUNC5(&hub_event_lock);

	/* Disconnect all children and quiesce the hub */
	hub->error = 0;
	FUNC0(hub, HUB_DISCONNECT);

	FUNC8 (intf, NULL);
	hub->hdev->maxchild = 0;

	if (hub->hdev->speed == USB_SPEED_HIGH)
		highspeed_hubs--;

	FUNC6(hub->urb);
	FUNC1(hub->port_owners);
	FUNC1(hub->descriptor);
	FUNC1(hub->status);
	FUNC1(hub->buffer);

	FUNC2(&hub->kref, hub_release);
}