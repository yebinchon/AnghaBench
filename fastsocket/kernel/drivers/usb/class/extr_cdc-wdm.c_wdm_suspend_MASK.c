#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wdm_device {int /*<<< orphan*/  plock; int /*<<< orphan*/  rxwork; int /*<<< orphan*/  flags; TYPE_1__* intf; } ;
struct usb_interface {int /*<<< orphan*/  minor; } ;
struct TYPE_5__ {int event; } ;
typedef  TYPE_2__ pm_message_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int PM_EVENT_AUTO ; 
 int /*<<< orphan*/  WDM_IN_USE ; 
 int /*<<< orphan*/  WDM_RESPONDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct wdm_device* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf, pm_message_t message)
{
	struct wdm_device *desc = FUNC6(intf);
	int rv = 0;

	FUNC1(&desc->intf->dev, "wdm%d_suspend\n", intf->minor);

	FUNC3(&desc->plock);
#ifdef CONFIG_PM
	if ((message.event & PM_EVENT_AUTO) &&
			(test_bit(WDM_IN_USE, &desc->flags)
			|| test_bit(WDM_RESPONDING, &desc->flags))) {
		rv = -EBUSY;
	} else {
#endif
		FUNC0(&desc->rxwork);
		FUNC2(desc);
#ifdef CONFIG_PM
	}
#endif
	FUNC4(&desc->plock);

	return rv;
}