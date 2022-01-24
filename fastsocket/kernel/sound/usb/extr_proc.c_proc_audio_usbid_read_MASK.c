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
struct snd_usb_audio {int /*<<< orphan*/  usb_id; int /*<<< orphan*/  shutdown; } ;
struct snd_info_entry {struct snd_usb_audio* private_data; } ;
struct snd_info_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_info_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	struct snd_usb_audio *chip = entry->private_data;
	if (!chip->shutdown)
		FUNC2(buffer, "%04x:%04x\n", 
			    FUNC1(chip->usb_id),
			    FUNC0(chip->usb_id));
}