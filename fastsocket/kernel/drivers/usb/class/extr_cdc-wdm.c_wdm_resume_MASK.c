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
struct wdm_device {int /*<<< orphan*/  plock; TYPE_1__* intf; } ;
struct usb_interface {int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wdm_device*) ; 
 struct wdm_device* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *intf)
{
	struct wdm_device *desc = FUNC4(intf);
	int rv;

	FUNC0(&desc->intf->dev, "wdm%d_resume\n", intf->minor);
	FUNC1(&desc->plock);
	rv = FUNC3(desc);
	FUNC2(&desc->plock);
	return rv;
}