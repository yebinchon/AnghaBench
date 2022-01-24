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
struct TYPE_2__ {int /*<<< orphan*/  clear_work; scalar_t__ hub; } ;
struct usb_hub {int quiescing; TYPE_1__ tt; int /*<<< orphan*/  leds; scalar_t__ has_indicators; int /*<<< orphan*/  urb; int /*<<< orphan*/  init_work; struct usb_device* hdev; } ;
struct usb_device {int maxchild; scalar_t__* children; } ;
typedef  enum hub_quiescing_type { ____Placeholder_hub_quiescing_type } hub_quiescing_type ;

/* Variables and functions */
 int HUB_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_hub *hub, enum hub_quiescing_type type)
{
	struct usb_device *hdev = hub->hdev;
	int i;

	FUNC0(&hub->init_work);

	/* khubd and related activity won't re-trigger */
	hub->quiescing = 1;

	if (type != HUB_SUSPEND) {
		/* Disconnect all the children */
		for (i = 0; i < hdev->maxchild; ++i) {
			if (hdev->children[i])
				FUNC2(&hdev->children[i]);
		}
	}

	/* Stop khubd and related activity */
	FUNC3(hub->urb);
	if (hub->has_indicators)
		FUNC0(&hub->leds);
	if (hub->tt.hub)
		FUNC1(&hub->tt.clear_work);
}