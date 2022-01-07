
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_mixer_oss_slot {scalar_t__ private_data; } ;
struct snd_mixer_oss_file {struct snd_card* card; struct snd_mixer_oss* mixer; } ;
struct snd_mixer_oss {int mask_recsrc; struct snd_mixer_oss_slot* slots; } ;
struct snd_kcontrol {int (* info ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;int id; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {unsigned int count; TYPE_2__ value; } ;
struct snd_ctl_elem_info {unsigned int count; TYPE_2__ value; } ;
struct snd_card {int controls_rwsem; } ;
struct slot {scalar_t__ signature; int present; int capture_item; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SNDRV_MIXER_OSS_PRESENT_CAPTURE ;
 scalar_t__ SNDRV_MIXER_OSS_SIGNATURE ;
 int down_read (int *) ;
 int kfree (struct snd_ctl_elem_value*) ;
 struct snd_ctl_elem_value* kzalloc (int,int ) ;
 int snd_ctl_notify (struct snd_card*,int ,int *) ;
 struct snd_kcontrol* snd_mixer_oss_test_id (struct snd_mixer_oss*,char*,int ) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int stub2 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int up_read (int *) ;

__attribute__((used)) static int snd_mixer_oss_put_recsrc2(struct snd_mixer_oss_file *fmixer, unsigned int active_index)
{
 struct snd_card *card = fmixer->card;
 struct snd_mixer_oss *mixer = fmixer->mixer;
 struct snd_kcontrol *kctl;
 struct snd_mixer_oss_slot *pslot;
 struct slot *slot = ((void*)0);
 struct snd_ctl_elem_info *uinfo;
 struct snd_ctl_elem_value *uctl;
 int err;
 unsigned int idx;

 uinfo = kzalloc(sizeof(*uinfo), GFP_KERNEL);
 uctl = kzalloc(sizeof(*uctl), GFP_KERNEL);
 if (uinfo == ((void*)0) || uctl == ((void*)0)) {
  err = -ENOMEM;
  goto __free_only;
 }
 down_read(&card->controls_rwsem);
 kctl = snd_mixer_oss_test_id(mixer, "Capture Source", 0);
 if (! kctl) {
  err = -ENOENT;
  goto __unlock;
 }
 if ((err = kctl->info(kctl, uinfo)) < 0)
  goto __unlock;
 for (idx = 0; idx < 32; idx++) {
  if (!(mixer->mask_recsrc & (1 << idx)))
   continue;
  pslot = &mixer->slots[idx];
  slot = (struct slot *)pslot->private_data;
  if (slot->signature != SNDRV_MIXER_OSS_SIGNATURE)
   continue;
  if (!(slot->present & SNDRV_MIXER_OSS_PRESENT_CAPTURE))
   continue;
  if (idx == active_index)
   break;
  slot = ((void*)0);
 }
 if (! slot)
  goto __unlock;
 for (idx = 0; idx < uinfo->count; idx++)
  uctl->value.enumerated.item[idx] = slot->capture_item;
 err = kctl->put(kctl, uctl);
 if (err > 0)
  snd_ctl_notify(fmixer->card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
 err = 0;
      __unlock:
 up_read(&card->controls_rwsem);
      __free_only:
 kfree(uctl);
 kfree(uinfo);
 return err;
}
