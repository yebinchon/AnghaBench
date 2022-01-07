
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_volatile {int owner_pid; struct snd_ctl_file* owner; int access; } ;
struct snd_kcontrol {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_file {struct snd_card* card; } ;
struct snd_ctl_elem_info {int owner; int access; int id; } ;
struct snd_card {int controls_rwsem; } ;


 int ENOENT ;
 int SNDRV_CTL_ELEM_ACCESS_LOCK ;
 int SNDRV_CTL_ELEM_ACCESS_OWNER ;
 int down_read (int *) ;
 int snd_BUG_ON (int ) ;
 int snd_ctl_build_ioff (int *,struct snd_kcontrol*,unsigned int) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,int *) ;
 unsigned int snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;
 int up_read (int *) ;

__attribute__((used)) static int snd_ctl_elem_info(struct snd_ctl_file *ctl,
        struct snd_ctl_elem_info *info)
{
 struct snd_card *card = ctl->card;
 struct snd_kcontrol *kctl;
 struct snd_kcontrol_volatile *vd;
 unsigned int index_offset;
 int result;

 down_read(&card->controls_rwsem);
 kctl = snd_ctl_find_id(card, &info->id);
 if (kctl == ((void*)0)) {
  up_read(&card->controls_rwsem);
  return -ENOENT;
 }



 result = kctl->info(kctl, info);
 if (result >= 0) {
  snd_BUG_ON(info->access);
  index_offset = snd_ctl_get_ioff(kctl, &info->id);
  vd = &kctl->vd[index_offset];
  snd_ctl_build_ioff(&info->id, kctl, index_offset);
  info->access = vd->access;
  if (vd->owner) {
   info->access |= SNDRV_CTL_ELEM_ACCESS_LOCK;
   if (vd->owner == ctl)
    info->access |= SNDRV_CTL_ELEM_ACCESS_OWNER;
   info->owner = vd->owner_pid;
  } else {
   info->owner = -1;
  }
 }
 up_read(&card->controls_rwsem);
 return result;
}
