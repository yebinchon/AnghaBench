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
struct usb_hub {int /*<<< orphan*/  event_list; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  intfdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pm_usage_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  hub_event_list ; 
 int /*<<< orphan*/  hub_event_lock ; 
 int /*<<< orphan*/  khubd_wait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_hub *hub)
{
	unsigned long	flags;

	/* Suppress autosuspend until khubd runs */
	FUNC0(&FUNC5(hub->intfdev)->pm_usage_cnt, 1);

	FUNC3(&hub_event_lock, flags);
	if (!hub->disconnected && FUNC2(&hub->event_list)) {
		FUNC1(&hub->event_list, &hub_event_list);
		FUNC6(&khubd_wait);
	}
	FUNC4(&hub_event_lock, flags);
}