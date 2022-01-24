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
struct wdm_device {int /*<<< orphan*/  count; int /*<<< orphan*/  wait; int /*<<< orphan*/  rxwork; int /*<<< orphan*/  iuspin; int /*<<< orphan*/  flags; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDM_DISCONNECTING ; 
 int /*<<< orphan*/  WDM_IN_USE ; 
 int /*<<< orphan*/  WDM_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wdm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 struct wdm_device* FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdm_class ; 
 int /*<<< orphan*/  wdm_mutex ; 

__attribute__((used)) static void FUNC12(struct usb_interface *intf)
{
	struct wdm_device *desc;
	unsigned long flags;

	FUNC9(intf, &wdm_class);
	FUNC4(&wdm_mutex);
	desc = FUNC10(intf);

	/* the spinlock makes sure no new urbs are generated in the callbacks */
	FUNC7(&desc->iuspin, flags);
	FUNC6(WDM_DISCONNECTING, &desc->flags);
	FUNC6(WDM_READ, &desc->flags);
	/* to terminate pending flushes */
	FUNC2(WDM_IN_USE, &desc->flags);
	FUNC8(&desc->iuspin, flags);
	FUNC0(&desc->rxwork);
	FUNC3(desc);
	FUNC11(&desc->wait);
	if (!desc->count)
		FUNC1(desc);
	FUNC5(&wdm_mutex);
}