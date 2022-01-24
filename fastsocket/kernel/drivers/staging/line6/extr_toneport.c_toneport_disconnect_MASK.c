#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct snd_line6_pcm* line6pcm; TYPE_2__* usbdev; } ;
struct usb_line6_toneport {TYPE_3__ line6; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct snd_line6_pcm {int dummy; } ;
struct TYPE_4__ {scalar_t__ idProduct; } ;
struct TYPE_5__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 scalar_t__ LINE6_DEVID_GUITARPORT ; 
 int /*<<< orphan*/  dev_attr_led_green ; 
 int /*<<< orphan*/  dev_attr_led_red ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_line6_pcm*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_line6_pcm*) ; 
 struct usb_line6_toneport* FUNC4 (struct usb_interface*) ; 

void FUNC5(struct usb_interface *interface)
{
	struct usb_line6_toneport *toneport;

	if (interface == NULL)
		return;
	toneport = FUNC4(interface);

	if (toneport->line6.usbdev->descriptor.idProduct != LINE6_DEVID_GUITARPORT) {
		FUNC0(&interface->dev, &dev_attr_led_red);
		FUNC0(&interface->dev, &dev_attr_led_green);
	}

	if (toneport != NULL) {
		struct snd_line6_pcm *line6pcm = toneport->line6.line6pcm;

		if (line6pcm != NULL) {
			FUNC3(line6pcm);
			FUNC2(line6pcm);
		}
	}

	FUNC1(interface);
}