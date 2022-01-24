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
struct usb_iso_packet_descriptor {scalar_t__ actual_length; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int data_alignment; } ;
struct snd_usb_caiaqdev {scalar_t__ bpp; int warned; scalar_t__ output_panic; scalar_t__ input_panic; TYPE_1__ spec; int /*<<< orphan*/  streaming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_usb_caiaqdev*,struct urb const*,struct usb_iso_packet_descriptor const*) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_caiaqdev *dev,
			const struct urb *urb,
			const struct usb_iso_packet_descriptor *iso)
{
	if (!dev->streaming)
		return;

	if (iso->actual_length < dev->bpp)
		return;

	switch (dev->spec.data_alignment) {
	case 0:
		FUNC1(dev, urb, iso);
		break;
	case 2:
		FUNC2(dev, urb, iso);
		break;
	case 3:
		FUNC3(dev, urb, iso);
		break;
	}

	if ((dev->input_panic || dev->output_panic) && !dev->warned) {
		FUNC0("streaming error detected %s %s\n",
				dev->input_panic ? "(input)" : "",
				dev->output_panic ? "(output)" : "");
		dev->warned = 1;
	}
}