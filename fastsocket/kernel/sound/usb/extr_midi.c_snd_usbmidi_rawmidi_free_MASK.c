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
struct snd_usb_midi {int dummy; } ;
struct snd_rawmidi {struct snd_usb_midi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_usb_midi*) ; 

__attribute__((used)) static void FUNC1(struct snd_rawmidi *rmidi)
{
	struct snd_usb_midi* umidi = rmidi->private_data;
	FUNC0(umidi);
}