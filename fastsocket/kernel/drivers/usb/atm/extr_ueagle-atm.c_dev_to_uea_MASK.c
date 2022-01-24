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
struct usbatm_data {struct uea_softc* driver_data; } ;
struct usb_interface {int dummy; } ;
struct uea_softc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct usb_interface* FUNC0 (struct device*) ; 
 struct usbatm_data* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static struct uea_softc *FUNC2(struct device *dev)
{
	struct usb_interface *intf;
	struct usbatm_data *usbatm;

	intf = FUNC0(dev);
	if (!intf)
		return NULL;

	usbatm = FUNC1(intf);
	if (!usbatm)
		return NULL;

	return usbatm->driver_data;
}