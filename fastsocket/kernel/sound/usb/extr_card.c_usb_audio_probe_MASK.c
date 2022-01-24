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
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct snd_usb_audio {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 struct snd_usb_audio* FUNC1 (int /*<<< orphan*/ ,struct usb_interface*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,struct snd_usb_audio*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf,
			   const struct usb_device_id *id)
{
	struct snd_usb_audio *chip;
	chip = FUNC1(FUNC0(intf), intf, id);
	if (chip) {
		FUNC2(intf, chip);
		return 0;
	} else
		return -EIO;
}