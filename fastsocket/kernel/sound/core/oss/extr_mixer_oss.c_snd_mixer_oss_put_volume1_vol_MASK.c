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
struct snd_mixer_oss_slot {int dummy; } ;
struct snd_mixer_oss_file {struct snd_card* card; } ;
struct snd_kcontrol {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;int /*<<< orphan*/  id; scalar_t__ (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_3__ {scalar_t__ min; int max; void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {scalar_t__ type; int count; TYPE_2__ value; } ;
struct snd_ctl_elem_info {scalar_t__ type; int count; TYPE_2__ value; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int ID_UNKNOWN ; 
 scalar_t__ SNDRV_CTL_ELEM_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ctl_elem_value*) ; 
 struct snd_ctl_elem_value* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC3 (struct snd_card*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int,scalar_t__,int) ; 
 scalar_t__ FUNC6 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int FUNC7 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct snd_mixer_oss_file *fmixer,
					  struct snd_mixer_oss_slot *pslot,
					  unsigned int numid,
					  int left, int right)
{
	struct snd_ctl_elem_info *uinfo;
	struct snd_ctl_elem_value *uctl;
	struct snd_kcontrol *kctl;
	struct snd_card *card = fmixer->card;
	int res;

	if (numid == ID_UNKNOWN)
		return;
	FUNC0(&card->controls_rwsem);
	if ((kctl = FUNC3(card, numid)) == NULL) {
		FUNC8(&card->controls_rwsem);
		return;
	}
	uinfo = FUNC2(sizeof(*uinfo), GFP_KERNEL);
	uctl = FUNC2(sizeof(*uctl), GFP_KERNEL);
	if (uinfo == NULL || uctl == NULL)
		goto __unalloc;
	if (kctl->info(kctl, uinfo))
		goto __unalloc;
	if (uinfo->type == SNDRV_CTL_ELEM_TYPE_BOOLEAN &&
	    uinfo->value.integer.min == 0 && uinfo->value.integer.max == 1)
		goto __unalloc;
	uctl->value.integer.value[0] = FUNC5(left, uinfo->value.integer.min, uinfo->value.integer.max);
	if (uinfo->count > 1)
		uctl->value.integer.value[1] = FUNC5(right, uinfo->value.integer.min, uinfo->value.integer.max);
	if ((res = kctl->put(kctl, uctl)) < 0)
		goto __unalloc;
	if (res > 0)
		FUNC4(card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
      __unalloc:
	FUNC8(&card->controls_rwsem);
      	FUNC1(uctl);
	FUNC1(uinfo);
}