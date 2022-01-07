
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_id {scalar_t__ numid; } ;
struct snd_kcontrol {scalar_t__ count; struct snd_ctl_elem_id id; } ;
struct snd_card {int controls_rwsem; scalar_t__ last_numid; } ;


 int ENOENT ;
 int down_write (int *) ;
 struct snd_kcontrol* snd_ctl_find_id (struct snd_card*,struct snd_ctl_elem_id*) ;
 int up_write (int *) ;

int snd_ctl_rename_id(struct snd_card *card, struct snd_ctl_elem_id *src_id,
        struct snd_ctl_elem_id *dst_id)
{
 struct snd_kcontrol *kctl;

 down_write(&card->controls_rwsem);
 kctl = snd_ctl_find_id(card, src_id);
 if (kctl == ((void*)0)) {
  up_write(&card->controls_rwsem);
  return -ENOENT;
 }
 kctl->id = *dst_id;
 kctl->id.numid = card->last_numid + 1;
 card->last_numid += kctl->count;
 up_write(&card->controls_rwsem);
 return 0;
}
