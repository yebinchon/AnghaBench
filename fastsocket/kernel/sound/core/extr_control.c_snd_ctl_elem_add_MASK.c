#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ numid; } ;
struct snd_ctl_elem_info {int count; unsigned int access; int owner; int type; TYPE_3__ id; } ;
struct user_element {char* elem_data; long elem_data_size; struct snd_ctl_elem_info info; } ;
struct TYPE_5__ {int /*<<< orphan*/  c; } ;
struct snd_kcontrol {int count; TYPE_2__* vd; struct user_element* private_data; int /*<<< orphan*/  private_free; TYPE_1__ tlv; int /*<<< orphan*/  put; int /*<<< orphan*/  get; int /*<<< orphan*/  info; int /*<<< orphan*/  id; } ;
struct snd_ctl_file {struct snd_card* card; } ;
struct snd_card {scalar_t__ user_ctl_count; int /*<<< orphan*/  controls_rwsem; } ;
struct snd_aes_iec958 {int dummy; } ;
typedef  int /*<<< orphan*/  kctl ;
struct TYPE_6__ {struct snd_ctl_file* owner; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MAX_USER_CONTROLS ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_INACTIVE ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_READ ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_READWRITE ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_USER ; 
 unsigned int SNDRV_CTL_ELEM_ACCESS_WRITE ; 
#define  SNDRV_CTL_ELEM_TYPE_BOOLEAN 132 
#define  SNDRV_CTL_ELEM_TYPE_BYTES 131 
#define  SNDRV_CTL_ELEM_TYPE_IEC958 130 
#define  SNDRV_CTL_ELEM_TYPE_INTEGER 129 
#define  SNDRV_CTL_ELEM_TYPE_INTEGER64 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct user_element*) ; 
 struct user_element* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_kcontrol*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct snd_card*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  snd_ctl_elem_user_free ; 
 int /*<<< orphan*/  snd_ctl_elem_user_get ; 
 int /*<<< orphan*/  snd_ctl_elem_user_info ; 
 int /*<<< orphan*/  snd_ctl_elem_user_put ; 
 int /*<<< orphan*/  snd_ctl_elem_user_tlv ; 
 struct snd_kcontrol* FUNC6 (struct snd_card*,TYPE_3__*) ; 
 struct snd_kcontrol* FUNC7 (struct snd_kcontrol*,unsigned int) ; 
 int FUNC8 (struct snd_card*,struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct snd_ctl_file *file,
			    struct snd_ctl_elem_info *info, int replace)
{
	struct snd_card *card = file->card;
	struct snd_kcontrol kctl, *_kctl;
	unsigned int access;
	long private_size;
	struct user_element *ue;
	int idx, err;

	if (!replace && card->user_ctl_count >= MAX_USER_CONTROLS)
		return -ENOMEM;
	if (info->count < 1)
		return -EINVAL;
	access = info->access == 0 ? SNDRV_CTL_ELEM_ACCESS_READWRITE :
		(info->access & (SNDRV_CTL_ELEM_ACCESS_READWRITE|
				 SNDRV_CTL_ELEM_ACCESS_INACTIVE|
				 SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE));
	info->id.numid = 0;
	FUNC4(&kctl, 0, sizeof(kctl));
	FUNC0(&card->controls_rwsem);
	_kctl = FUNC6(card, &info->id);
	err = 0;
	if (_kctl) {
		if (replace)
			err = FUNC8(card, _kctl);
		else
			err = -EBUSY;
	} else {
		if (replace)
			err = -ENOENT;
	}
	FUNC9(&card->controls_rwsem);
	if (err < 0)
		return err;
	FUNC3(&kctl.id, &info->id, sizeof(info->id));
	kctl.count = info->owner ? info->owner : 1;
	access |= SNDRV_CTL_ELEM_ACCESS_USER;
	kctl.info = snd_ctl_elem_user_info;
	if (access & SNDRV_CTL_ELEM_ACCESS_READ)
		kctl.get = snd_ctl_elem_user_get;
	if (access & SNDRV_CTL_ELEM_ACCESS_WRITE)
		kctl.put = snd_ctl_elem_user_put;
	if (access & SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE) {
		kctl.tlv.c = snd_ctl_elem_user_tlv;
		access |= SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK;
	}
	switch (info->type) {
	case SNDRV_CTL_ELEM_TYPE_BOOLEAN:
	case SNDRV_CTL_ELEM_TYPE_INTEGER:
		private_size = sizeof(long);
		if (info->count > 128)
			return -EINVAL;
		break;
	case SNDRV_CTL_ELEM_TYPE_INTEGER64:
		private_size = sizeof(long long);
		if (info->count > 64)
			return -EINVAL;
		break;
	case SNDRV_CTL_ELEM_TYPE_BYTES:
		private_size = sizeof(unsigned char);
		if (info->count > 512)
			return -EINVAL;
		break;
	case SNDRV_CTL_ELEM_TYPE_IEC958:
		private_size = sizeof(struct snd_aes_iec958);
		if (info->count != 1)
			return -EINVAL;
		break;
	default:
		return -EINVAL;
	}
	private_size *= info->count;
	ue = FUNC2(sizeof(struct user_element) + private_size, GFP_KERNEL);
	if (ue == NULL)
		return -ENOMEM;
	ue->info = *info;
	ue->info.access = 0;
	ue->elem_data = (char *)ue + sizeof(*ue);
	ue->elem_data_size = private_size;
	kctl.private_free = snd_ctl_elem_user_free;
	_kctl = FUNC7(&kctl, access);
	if (_kctl == NULL) {
		FUNC1(ue);
		return -ENOMEM;
	}
	_kctl->private_data = ue;
	for (idx = 0; idx < _kctl->count; idx++)
		_kctl->vd[idx].owner = file;
	err = FUNC5(card, _kctl);
	if (err < 0)
		return err;

	FUNC0(&card->controls_rwsem);
	card->user_ctl_count++;
	FUNC9(&card->controls_rwsem);

	return 0;
}