
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_volatile {int access; } ;
struct snd_kcontrol {int (* get ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;struct snd_kcontrol_volatile* vd; } ;
struct snd_ctl_elem_value {int id; } ;
struct snd_card {int controls_rwsem; } ;


 int ENOENT ;
 int EPERM ;
 int SNDRV_CTL_ELEM_ACCESS_READ ;
 int down_read (int *) ;
 int snd_ctl_build_ioff (int *,struct snd_kcontrol*,unsigned int) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,int *) ;
 unsigned int snd_ctl_get_ioff (struct snd_kcontrol*,int *) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int up_read (int *) ;

__attribute__((used)) static int snd_ctl_elem_read(struct snd_card *card,
        struct snd_ctl_elem_value *control)
{
 struct snd_kcontrol *kctl;
 struct snd_kcontrol_volatile *vd;
 unsigned int index_offset;
 int result;

 down_read(&card->controls_rwsem);
 kctl = snd_ctl_find_id(card, &control->id);
 if (kctl == ((void*)0)) {
  result = -ENOENT;
 } else {
  index_offset = snd_ctl_get_ioff(kctl, &control->id);
  vd = &kctl->vd[index_offset];
  if ((vd->access & SNDRV_CTL_ELEM_ACCESS_READ) &&
      kctl->get != ((void*)0)) {
   snd_ctl_build_ioff(&control->id, kctl, index_offset);
   result = kctl->get(kctl, control);
  } else
   result = -EPERM;
 }
 up_read(&card->controls_rwsem);
 return result;
}
