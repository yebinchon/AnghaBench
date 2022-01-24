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
struct snd_usb_audio {int /*<<< orphan*/  card; } ;
struct snd_info_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  proc_audio_usbbus_read ; 
 int /*<<< orphan*/  proc_audio_usbid_read ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct snd_info_entry**) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_entry*,struct snd_usb_audio*,int /*<<< orphan*/ ) ; 

void FUNC2(struct snd_usb_audio *chip)
{
	struct snd_info_entry *entry;
	if (!FUNC0(chip->card, "usbbus", &entry))
		FUNC1(entry, chip, proc_audio_usbbus_read);
	if (!FUNC0(chip->card, "usbid", &entry))
		FUNC1(entry, chip, proc_audio_usbid_read);
}