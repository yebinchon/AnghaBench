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
struct snd_kcontrol {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;} ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_ctl_elem_info {int type; int count; struct snd_ctl_elem_id id; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ctl_elem_info*) ; 
 struct snd_ctl_elem_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol* FUNC3 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int FUNC4 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_card *card, struct snd_ctl_elem_id *id,
			int *countp)
{
	struct snd_kcontrol *kctl;
	struct snd_ctl_elem_info *info;
	int err;

	FUNC0(&card->controls_rwsem);
	kctl = FUNC3(card, id);
	if (! kctl) {
		FUNC5(&card->controls_rwsem);
		return -ENXIO;
	}
	info = FUNC2(sizeof(*info), GFP_KERNEL);
	if (info == NULL) {
		FUNC5(&card->controls_rwsem);
		return -ENOMEM;
	}
	info->id = *id;
	err = kctl->info(kctl, info);
	FUNC5(&card->controls_rwsem);
	if (err >= 0) {
		err = info->type;
		*countp = info->count;
	}
	FUNC1(info);
	return err;
}