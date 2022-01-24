#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int items; int item; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int /*<<< orphan*/  type; } ;
struct hdsp {scalar_t__ io_type; } ;

/* Variables and functions */
 scalar_t__ H9632 ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_TYPE_ENUMERATED ; 
 struct hdsp* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
	static char *texts[] = {"AutoSync", "Internal 32.0 kHz", "Internal 44.1 kHz", "Internal 48.0 kHz", "Internal 64.0 kHz", "Internal 88.2 kHz", "Internal 96.0 kHz", "Internal 128 kHz", "Internal 176.4 kHz", "Internal 192.0 KHz" };
	struct hdsp *hdsp = FUNC0(kcontrol);

	uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
	uinfo->count = 1;
	if (hdsp->io_type == H9632)
	    uinfo->value.enumerated.items = 10;
	else
	    uinfo->value.enumerated.items = 7;
	if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
		uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
	FUNC1(uinfo->value.enumerated.name, texts[uinfo->value.enumerated.item]);
	return 0;
}