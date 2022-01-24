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
struct usb_interface {int /*<<< orphan*/  altsetting; } ;
struct usb_driver {int dummy; } ;
struct snd_usb_audio_quirk {int ifnum; struct snd_usb_audio_quirk* data; } ;
struct snd_usb_audio {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int bInterfaceNumber; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_usb_audio*,struct usb_interface*,struct usb_driver*,struct snd_usb_audio_quirk const*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_driver*,struct usb_interface*,void*) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC5(struct snd_usb_audio *chip,
				  struct usb_interface *iface,
				  struct usb_driver *driver,
				  const struct snd_usb_audio_quirk *quirk)
{
	int probed_ifnum = FUNC0(iface->altsetting)->bInterfaceNumber;
	int err;

	for (quirk = quirk->data; quirk->ifnum >= 0; ++quirk) {
		iface = FUNC3(chip->dev, quirk->ifnum);
		if (!iface)
			continue;
		if (quirk->ifnum != probed_ifnum &&
		    FUNC4(iface))
			continue;
		err = FUNC1(chip, iface, driver, quirk);
		if (err < 0)
			return err;
		if (quirk->ifnum != probed_ifnum)
			FUNC2(driver, iface, (void *)-1L);
	}
	return 0;
}