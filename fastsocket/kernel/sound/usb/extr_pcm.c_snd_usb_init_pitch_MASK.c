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
struct usb_interface_descriptor {int bInterfaceProtocol; } ;
struct usb_host_interface {int dummy; } ;
struct snd_usb_audio {int dummy; } ;
struct audioformat {int attributes; } ;

/* Variables and functions */
 int UAC_EP_CS_ATTR_PITCH_CONTROL ; 
#define  UAC_VERSION_1 129 
#define  UAC_VERSION_2 128 
 struct usb_interface_descriptor* FUNC0 (struct usb_host_interface*) ; 
 int FUNC1 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*) ; 
 int FUNC2 (struct snd_usb_audio*,int,struct usb_host_interface*,struct audioformat*) ; 

int FUNC3(struct snd_usb_audio *chip, int iface,
		       struct usb_host_interface *alts,
		       struct audioformat *fmt)
{
	struct usb_interface_descriptor *altsd = FUNC0(alts);

	/* if endpoint doesn't have pitch control, bail out */
	if (!(fmt->attributes & UAC_EP_CS_ATTR_PITCH_CONTROL))
		return 0;

	switch (altsd->bInterfaceProtocol) {
	case UAC_VERSION_1:
	default:
		return FUNC1(chip, iface, alts, fmt);

	case UAC_VERSION_2:
		return FUNC2(chip, iface, alts, fmt);
	}
}