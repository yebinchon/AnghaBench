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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_kcontrol* FUNC1 (struct snd_card*,struct snd_ctl_elem_id*) ; 
 int FUNC2 (struct snd_card*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_card *card, struct snd_ctl_elem_id *id)
{
	struct snd_kcontrol *kctl;
	int ret;

	FUNC0(&card->controls_rwsem);
	kctl = FUNC1(card, id);
	if (kctl == NULL) {
		FUNC3(&card->controls_rwsem);
		return -ENOENT;
	}
	ret = FUNC2(card, kctl);
	FUNC3(&card->controls_rwsem);
	return ret;
}