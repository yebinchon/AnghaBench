
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int count; TYPE_1__* vd; } ;
struct snd_ctl_file {struct snd_card* card; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_card {int controls_rwsem; int user_ctl_count; } ;
struct TYPE_2__ {int access; struct snd_ctl_file* owner; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int SNDRV_CTL_ELEM_ACCESS_USER ;
 int down_write (int *) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int snd_ctl_remove (struct snd_card*,struct snd_kcontrol*) ;
 int up_write (int *) ;

__attribute__((used)) static int snd_ctl_remove_user_ctl(struct snd_ctl_file * file,
       struct snd_ctl_elem_id *id)
{
 struct snd_card *card = file->card;
 struct snd_kcontrol *kctl;
 int idx, ret;

 down_write(&card->controls_rwsem);
 kctl = snd_ctl_find_id(card, id);
 if (kctl == ((void*)0)) {
  ret = -ENOENT;
  goto error;
 }
 if (!(kctl->vd[0].access & SNDRV_CTL_ELEM_ACCESS_USER)) {
  ret = -EINVAL;
  goto error;
 }
 for (idx = 0; idx < kctl->count; idx++)
  if (kctl->vd[idx].owner != ((void*)0) && kctl->vd[idx].owner != file) {
   ret = -EBUSY;
   goto error;
  }
 ret = snd_ctl_remove(card, kctl);
 if (ret < 0)
  goto error;
 card->user_ctl_count--;
error:
 up_write(&card->controls_rwsem);
 return ret;
}
