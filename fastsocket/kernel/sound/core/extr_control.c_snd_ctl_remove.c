
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_id {int numid; int index; } ;
struct snd_kcontrol {unsigned int count; struct snd_ctl_elem_id id; int list; } ;
struct snd_card {unsigned int controls_count; } ;


 int EINVAL ;
 int SNDRV_CTL_EVENT_MASK_REMOVE ;
 int list_del (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_free_one (struct snd_kcontrol*) ;
 int snd_ctl_notify (struct snd_card*,int ,struct snd_ctl_elem_id*) ;

int snd_ctl_remove(struct snd_card *card, struct snd_kcontrol *kcontrol)
{
 struct snd_ctl_elem_id id;
 unsigned int idx;

 if (snd_BUG_ON(!card || !kcontrol))
  return -EINVAL;
 list_del(&kcontrol->list);
 card->controls_count -= kcontrol->count;
 id = kcontrol->id;
 for (idx = 0; idx < kcontrol->count; idx++, id.index++, id.numid++)
  snd_ctl_notify(card, SNDRV_CTL_EVENT_MASK_REMOVE, &id);
 snd_ctl_free_one(kcontrol);
 return 0;
}
