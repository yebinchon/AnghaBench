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
struct wusbhc {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct usb_bus {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (struct usb_bus*) ; 
 struct usb_bus* FUNC1 (struct device*) ; 
 struct wusbhc* FUNC2 (struct usb_hcd*) ; 

__attribute__((used)) static struct wusbhc *FUNC3(struct device *dev)
{
	struct usb_bus *usb_bus = FUNC1(dev);
	struct usb_hcd *usb_hcd = FUNC0(usb_bus);
	return FUNC2(usb_hcd);
}