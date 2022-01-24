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
struct usb_interface_cache {int /*<<< orphan*/  ref; } ;
struct usb_interface {int /*<<< orphan*/  altsetting; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct usb_interface_cache* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  usb_release_interface_cache ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct usb_interface *intf = FUNC3(dev);
	struct usb_interface_cache *intfc =
			FUNC0(intf->altsetting);

	FUNC2(&intfc->ref, usb_release_interface_cache);
	FUNC1(intf);
}