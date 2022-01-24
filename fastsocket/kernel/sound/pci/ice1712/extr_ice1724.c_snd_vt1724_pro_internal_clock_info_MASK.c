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
struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {TYPE_1__* hw_rates; } ;
struct TYPE_5__ {size_t items; size_t item; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {size_t count; int* list; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_TYPE_ENUMERATED ; 
 struct snd_ice1712* FUNC0 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
					      struct snd_ctl_elem_info *uinfo)
{
	struct snd_ice1712 *ice = FUNC0(kcontrol);

	uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
	uinfo->count = 1;
	uinfo->value.enumerated.items = ice->hw_rates->count + 1;
	if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
		uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
	if (uinfo->value.enumerated.item == uinfo->value.enumerated.items - 1)
		FUNC2(uinfo->value.enumerated.name, "IEC958 Input");
	else
		FUNC1(uinfo->value.enumerated.name, "%d",
			ice->hw_rates->list[uinfo->value.enumerated.item]);
	return 0;
}