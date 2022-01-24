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
struct snd_kcontrol_volatile {int access; struct snd_ctl_file* owner; } ;
struct snd_kcontrol {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_file {int dummy; } ;
struct snd_ctl_elem_value {int /*<<< orphan*/  id; } ;
struct snd_card {int /*<<< orphan*/  controls_rwsem; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int SNDRV_CTL_ELEM_ACCESS_WRITE ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct snd_kcontrol*,unsigned int) ; 
 struct snd_kcontrol* FUNC2 (struct snd_card*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct snd_card *card, struct snd_ctl_file *file,
			      struct snd_ctl_elem_value *control)
{
	struct snd_kcontrol *kctl;
	struct snd_kcontrol_volatile *vd;
	unsigned int index_offset;
	int result;

	FUNC0(&card->controls_rwsem);
	kctl = FUNC2(card, &control->id);
	if (kctl == NULL) {
		result = -ENOENT;
	} else {
		index_offset = FUNC3(kctl, &control->id);
		vd = &kctl->vd[index_offset];
		if (!(vd->access & SNDRV_CTL_ELEM_ACCESS_WRITE) ||
		    kctl->put == NULL ||
		    (file && vd->owner && vd->owner != file)) {
			result = -EPERM;
		} else {
			FUNC1(&control->id, kctl, index_offset);
			result = kctl->put(kctl, control);
		}
		if (result > 0) {
			FUNC6(&card->controls_rwsem);
			FUNC4(card, SNDRV_CTL_EVENT_MASK_VALUE,
				       &control->id);
			return 0;
		}
	}
	FUNC6(&card->controls_rwsem);
	return result;
}