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
struct wdm_device {int /*<<< orphan*/  plock; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct wdm_device* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf)
{
	struct wdm_device *desc = FUNC1(intf);

	FUNC0(&desc->plock);
	return 0;
}