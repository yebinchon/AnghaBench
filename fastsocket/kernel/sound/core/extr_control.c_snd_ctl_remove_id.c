
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct snd_card {int controls_rwsem; } ;


 int ENOENT ;
 int down_write (int *) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int snd_ctl_remove (struct snd_card*,struct snd_kcontrol*) ;
 int up_write (int *) ;

int snd_ctl_remove_id(struct snd_card *card, struct snd_ctl_elem_id *id)
{
 struct snd_kcontrol *kctl;
 int ret;

 down_write(&card->controls_rwsem);
 kctl = snd_ctl_find_id(card, id);
 if (kctl == ((void*)0)) {
  up_write(&card->controls_rwsem);
  return -ENOENT;
 }
 ret = snd_ctl_remove(card, kctl);
 up_write(&card->controls_rwsem);
 return ret;
}
