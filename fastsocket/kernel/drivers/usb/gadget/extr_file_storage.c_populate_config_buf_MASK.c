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
typedef  scalar_t__ u8 ;
struct usb_gadget {int speed; } ;
struct usb_descriptor_header {int dummy; } ;
struct usb_config_descriptor {scalar_t__ bDescriptorType; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EP0_BUFSIZE ; 
 scalar_t__ USB_DT_OTHER_SPEED_CONFIG ; 
 int USB_SPEED_FULL ; 
 int USB_SPEED_HIGH ; 
 int /*<<< orphan*/  config_desc ; 
 struct usb_descriptor_header** fs_function ; 
 scalar_t__ FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_gadget*) ; 
 struct usb_descriptor_header** hs_function ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,struct usb_descriptor_header const**) ; 

__attribute__((used)) static int FUNC3(struct usb_gadget *gadget,
		u8 *buf, u8 type, unsigned index)
{
	enum usb_device_speed			speed = gadget->speed;
	int					len;
	const struct usb_descriptor_header	**function;

	if (index > 0)
		return -EINVAL;

	if (FUNC0(gadget) && type == USB_DT_OTHER_SPEED_CONFIG)
		speed = (USB_SPEED_FULL + USB_SPEED_HIGH) - speed;
	if (FUNC0(gadget) && speed == USB_SPEED_HIGH)
		function = hs_function;
	else
		function = fs_function;

	/* for now, don't advertise srp-only devices */
	if (!FUNC1(gadget))
		function++;

	len = FUNC2(&config_desc, buf, EP0_BUFSIZE, function);
	((struct usb_config_descriptor *) buf)->bDescriptorType = type;
	return len;
}