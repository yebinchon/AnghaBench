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
struct usb_mixer_interface {TYPE_1__* chip; struct usb_mixer_elem_info** id_elems; } ;
struct usb_mixer_elem_info {int /*<<< orphan*/  elem_id; struct usb_mixer_elem_info* next_id_elem; } ;
struct TYPE_2__ {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct usb_mixer_interface *mixer, int unitid)
{
	struct usb_mixer_elem_info *info;

	for (info = mixer->id_elems[unitid]; info; info = info->next_id_elem)
		FUNC0(mixer->chip->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       info->elem_id);
}