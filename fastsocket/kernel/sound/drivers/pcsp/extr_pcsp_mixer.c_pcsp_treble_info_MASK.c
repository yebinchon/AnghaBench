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
struct snd_pcsp {scalar_t__ max_treble; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__ items; scalar_t__ item; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SNDRV_CTL_ELEM_TYPE_ENUMERATED ; 
 struct snd_pcsp* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			    struct snd_ctl_elem_info *uinfo)
{
	struct snd_pcsp *chip = FUNC1(kcontrol);
	uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
	uinfo->count = 1;
	uinfo->value.enumerated.items = chip->max_treble + 1;
	if (uinfo->value.enumerated.item > chip->max_treble)
		uinfo->value.enumerated.item = chip->max_treble;
	FUNC2(uinfo->value.enumerated.name, "%lu",
		(unsigned long)FUNC0(uinfo->value.enumerated.item));
	return 0;
}