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
struct usb_mixer_interface {int* audigy2nx_leds; TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ usb_id; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/ * snd_audigy2nx_controls ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_mixer_interface*) ; 

__attribute__((used)) static int FUNC4(struct usb_mixer_interface *mixer)
{
	int i, err;

	for (i = 0; i < FUNC0(snd_audigy2nx_controls); ++i) {
		/* USB X-Fi S51 doesn't have a CMSS LED */
		if ((mixer->chip->usb_id == FUNC1(0x041e, 0x3042)) && i == 0)
			continue;
		/* USB X-Fi S51 Pro doesn't have one either */
		if ((mixer->chip->usb_id == FUNC1(0x041e, 0x30df)) && i == 0)
			continue;
		if (i > 1 && /* Live24ext has 2 LEDs only */
			(mixer->chip->usb_id == FUNC1(0x041e, 0x3040) ||
			 mixer->chip->usb_id == FUNC1(0x041e, 0x3042) ||
			 mixer->chip->usb_id == FUNC1(0x041e, 0x30df) ||
			 mixer->chip->usb_id == FUNC1(0x041e, 0x3048)))
			break; 
		err = FUNC2(mixer->chip->card,
				  FUNC3(&snd_audigy2nx_controls[i], mixer));
		if (err < 0)
			return err;
	}
	mixer->audigy2nx_leds[1] = 1; /* Power LED is on by default */
	return 0;
}